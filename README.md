## Tutors Book

Tutors Book is a Ruby on Rails web application that provides a convenient platform for managing and contacting tutors' information.

[Imgur](https://i.imgur.com/DpLZAY1.png)

### Installation:
1. Clone the repository to your local machine.
2. In the project directory, run `bundle install` to install the required gems.
3. Set up the database by running rails db:migrate.
4. Start the server by running rails server.
5. Open your browser and navigate to http://localhost:3000.

### Usage:

Once the server is running and you've accessed the application in your browser, you can:
1. Register for a new account or log in with an existing one
2. Create, edit, view, and delete tutors' information

## Features

- User Registration and Login: Users can register for new accounts or log in with existing ones.
- Tutor Information Management: Users can create, edit, view, and delete tutors' information, including their name, email, phone number, school, and birthdays.
- Address Book Functionality (Still under development): Users can view a list of all tutors and search, sort, and filter them by name, course, and other criteria for easy and quick access.
- Birthday Reminder (Still under development): The application will provide a birthday reminder feature, allowing users to receive notifications before tutors' birthdays to send greetings.
- User-Friendly Interface: The application has an intuitive and responsive user interface design to provide an excellent user experience.

## Data Model:

Tutor Table:
| Column Name | Data Type | Description |
| ----------- | --------- | ----------- |
| id | integer | Primary key |
| first_name | string | Tutor's first name |
| last_name | string | Tutor's last name |
| email | string | Tutor's email address |
| phone_number | string | Tutor's phone number |
| school_name | string | Tutor's school name |
| birthday_date | datetime | Tutor's birthday date |

Member Table:
| Column Name | Data Type | Description |
| ----------- | --------- | ----------- |
| id | integer | Primary key |
| email | string | Member's email address |
| password | string | Member's password |


### About

Hi there! My name is Yifan, and this is my first ruby on rails project learn from [freecodecamp.org](https://www.youtube.com/watch?v=fmyvWz5TUWg&themeRefresh=1). I hope you find it useful. 





