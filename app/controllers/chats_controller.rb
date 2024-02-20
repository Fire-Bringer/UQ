class ChatsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_classroom, only: [:show, :create]

  def show
    authorize(@classroom, :show?)
    sent_messages = Message.where(sender: current_user, receiver: @classroom.students)
                           .order(created_at: :asc)
    received_messages = Message.where(sender: @classroom.students, receiver: current_user)
                               .order(created_at: :asc)

    @messages = sent_messages + received_messages
    @messages.sort_by!(&:created_at)

    @message = Message.new
  end

  def create
    skip_authorization
    @message = Message.new(message_params)
    @message.sender = current_user
    @message.receiver = @classroom.students.sample

    if @message.save
      redirect_to classroom_chat_create_path(@classroom), notice: 'Message sent successfully.'
    else
      flash[:alert] = 'Error sending message.'
      render :show
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end

  def set_classroom
    @classroom = Classroom.find(params[:classroom_id])
  end
end
