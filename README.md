# GYMieNeutron

GYMieNeutron is a fitness web application for men and women, delivering on different courses for most muscle groups.

## Installation

Download, or clone the Github repository. Open it up with InteliJ (be sure to have TomCat, MySQL Workbench and a Browser like Chrome or Firefox
according to the courses information installed). Once opened, build the application, and run it. Open the application up typing localhost:8080
in your browser. 

## Usage

Currently there are two users that are available. The normal user as well as the admin. 

User credentials: username: user password: user
Admin credentials: username: admin password: user

Only the admin can add new users as the anonymous user (with .antMatchers) is not working and we do not know why. Once logged in the user can 
choose the gender and is then being forwarded to the courses page, where he/she can pick the desired course. 
