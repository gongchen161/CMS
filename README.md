# README

* Database creation
  1. The default database management system used is mysql
  2. The default databases that need to be created are `cms_development` and `cms_test`
  3. Make sure to `GRANT ALL PRIVILEGES` of the above databases to your users
  4. Change the username and password accordingly in "config/database.yml"

* Database initialization
  1. run `rails db:migrate` to generate all the necessary tables;

* How to run the application
  1. run `rails server` to start the server
  2. Go to `localhost:3000`(default destination) to launch the application
