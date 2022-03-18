# README

This is a simple todo application created using Rails 6.1, Ruby 2.6.9, and SQLite 3.

This application allows a user to create a task with a title, description, and a priority. Along with list of tasks that
have been created, the index page will also show the missing priorities that need to be added.

For instance, if my current to do list contains items with priorities of 1, 3, 5, 7, 12, the application should indicate 
that priorities 2, 4, 6, 8, 9, 10, 11 are missing. Should I delete the todo item with priority 12, the new set of 
missing priorities would be 2, 4, 6.

To install:

1. rbenv install 2.6.9 (rvm install 2.6.9)
2. rbenv shell 2.6.9 (rvm use 2.6.9)
1. bundle install --path vendor/bundle
2. rails db:create db:migrate
3. rails s

see http://localhost:3000/tasks

![Home Page](https://github.com/kbalante/todo_list/blob/master/home-page.jpg)