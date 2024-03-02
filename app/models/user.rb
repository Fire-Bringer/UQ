class User < ApplicationRecord
  belongs_to :classroom, optional: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :classrooms, dependent: :destroy
  has_many :participations, dependent: :destroy
  has_many :students, class_name: 'User', through: :participations, source: :user
  has_many :lessons, through: :classrooms
  has_many :responses, dependent: :destroy
  has_many :sent_direct_messages, class_name: 'DirectMessage', foreign_key: 'sender_id', dependent: :destroy
  has_many :received_direct_messages, class_name: 'DirectMessage', foreign_key: 'recipient_id', dependent: :destroy
  has_many :chatroom_users
  has_many :chatrooms, through: :chatroom_users
  has_many :messages
  
  # To attach avatar photos to all user seeds
  has_one_attached :photo

  def full_name
    "#{first_name} #{last_name}"
  end

  def teacher?
    teacher == true
  end

  def student?
    !teacher?
  end
end
