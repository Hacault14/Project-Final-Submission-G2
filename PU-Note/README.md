# Final Project Code
This is a prototype for our Course Management System after having completed 3 iterations of the ADD process.

# Code Organization and Relationship to Design
Our project uses PHP, jQuery, Ajax and MySQL. The front-end uses Muicss, HTML, and JavaScript. 

The project folder contains two main folders, View and Controller which represent the Presentation and Buisiness layers respectively. The MySQL database serves as the Data layer.

The prototype aims to implement many use cases defined during the design process including:

| USE CASE                                 | DESCRIPTION                                                                                            |
|------------------------------------------|--------------------------------------------------------------------------------------------------------|
| UC 1 - Subscribe and unsubscribe         | Students subscribe or unsubscribe from a course or exam if they meet the requirements.                 |
| UC 2 - Manage static course information  | The administrator updates the name of a lecturer and study materials for a course.                     |
| UC 3 - Manage dynamic course information | The lecturer can post messages and manage who can see archived items                                   |
| UC 4 - Create course                     | The lecturer and/or the administrator can create new courses and recreate courses in the system        |
| UC 5 - Manage grades                     | Lecturers can update, insert and calculate grades in the system.                                       |
| UC 6 - Manage space size                 | Maintainers allocate space for a course and limit the size of files lecturers and students can upload. |
| UC 7 - Create teams                      | Students and lecturers can create teams for students to collaborate and share files in the system.     |
| UC 8 - Send messages                     | Lecturers and students can send messages through mail or the messaging system to other participants    |

