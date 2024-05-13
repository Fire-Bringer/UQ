# 🏫 UQ - Your Intelligence

An EduTech AI app built in a team of 3 people that aids students’ learning by applying the VARK learning style and helps teachers to grow the students in the best way possible. An exciting aspect of the application is allowing teachers to create lessons through AI in 4 different styles and students to utilize real-time AI chat for aid.

### Interesting points on the project
- AI creates 4 lesson types (Visual, Auditory, Reading, Kinesthetic) based on your prompt
- Chat: The teacher can see all the student name's when messaging the general chat room but other student's are unable to see each other's names so that they are not shy in asking questions
- AI can further create supplementary lessons for the students who are scoring 50% or less, they can toggle the feature in the original lesson

### Login info
1. ### Teacher</br>
   email: abc@abc.com</br>
   password: password</br>
2. ### Student</br>
   email: student@abc.com</br>
   password: password1


### Screenshots:

Home Page Hero
![uq_home](https://github.com/Fire-Bringer/UQ/assets/135202658/29c11df9-7b06-4f6b-a0e5-55c559a40ee1)

Lessons Index
![lessons](https://github.com/Fire-Bringer/UQ/assets/135202658/a147dbb3-e83e-46d0-8944-6682fa309701)

Visual Lesson
![aural](https://github.com/Fire-Bringer/UQ/assets/135202658/d516f413-86d6-4781-a1fd-81db103e3e7f)

Aural Lesson
![aural](https://github.com/Fire-Bringer/UQ/assets/135202658/305f5441-4762-484c-b1d1-2b8732e2b36b)

Reading Lesson
![reading](https://github.com/Fire-Bringer/UQ/assets/135202658/501ecad6-409c-4ed7-87f7-db26cb581dfe)

Kinesthetic Lesson
![kinesthetic](https://github.com/Fire-Bringer/UQ/assets/135202658/69564d37-c2e2-428c-b120-46bb27b809f0)

AI Homework Assistant
![ai](https://github.com/Fire-Bringer/UQ/assets/135202658/e304e3ed-6c50-4fe2-874b-7bae256653a1)

AI Lesson Generator
![ai_lesson](https://github.com/Fire-Bringer/UQ/assets/135202658/891e3a35-1d7d-4ad9-84e4-d93ea3a49929)

Students Index
![students](https://github.com/Fire-Bringer/UQ/assets/135202658/e432be0c-daa3-415c-8ca3-ca2172529fdd)

Student Progress
![student_progress](https://github.com/Fire-Bringer/UQ/assets/135202658/8cd32f8b-4c66-44f0-bf6d-5e995f37c0cb)

Quiz Result Page
![results_chart](https://github.com/Fire-Bringer/UQ/assets/135202658/a641a1af-1a5a-4f54-9778-d4478d9c8e95)

Classroom Chat
![uq_chat](https://github.com/Fire-Bringer/UQ/assets/135202658/d454d4ee-9a12-4e8f-bafd-425f8c4ce3d6)

To-Do List
![todo_students](https://github.com/Fire-Bringer/UQ/assets/135202658/146250ca-6cdb-4c9c-a023-e8915556c705)


Project Page: https://www.uqedu.org/


## Getting Started
### Setup

Install gems
```
bundle install
```

### ENV Variables
Create `.env` file
```
touch .env
```
Inside `.env`, set these variables. For any APIs, see group Slack channel.
```
CLOUDINARY_URL=your_own_cloudinary_url_key
OPENAI_ACCESS_TOKEN=your_own_cloudinary_url_key
```

### DB Setup
```
rails db:create
rails db:migrate
rails db:seed
```

### Run a server
```
rails s
```

## Built With
- [Rails 7](https://guides.rubyonrails.org/) - Backend / Front-end
- [Stimulus JS](https://stimulus.hotwired.dev/) - Front-end JS
- [Heroku](https://heroku.com/) - Deployment
- [PostgreSQL](https://www.postgresql.org/) - Database
- [Bootstrap](https://getbootstrap.com/) — Styling
- [Figma](https://www.figma.com) — Prototyping
- [Playwright](https://playwright.dev/) - Testing

## Team Members
- [Rashad Dupaty](https://www.linkedin.com/in/rashaddupaty/)
- [Eduard Gurchiani](https://www.linkedin.com/in/eduard-gurchiani/)

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## License
This project is licensed under the MIT License
