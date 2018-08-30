# README

* Database creation
  1. The default database management system used is mysql
  2. The default databases that need to be created are `cms_development` and `cms_test`
  3. Make sure to `GRANT ALL PRIVILEGES` of the above databases to your users
  4. Change the username and password accordingly in "config/database.yml"

* Database initialization
  1. run `rails db:migrate` to generate all the necessary tables;

* How to run the application
  1. To view the page content, run `rails server` to start the server and then go to `localhost:3000`(default destination) to       launch the home page
  2. To manage the pagescreate an admin user in mysql admin_user table, go to `localhost:3000\admin`(default destination) to       log in and then Edit, Update and view the pages/sections links will be available
  
  
