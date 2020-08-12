# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app- Installed Sinatra gem, required Sinatra, models and controllers inhert from Sinatra::Base 

- [x] Use ActiveRecord for storing information in a database- Installed the necessary gems (ActiveRecord, sinatra-activerecord, rake, sqlite3), created Users and Lists tables via migrations, tables are related to each other via ActiveRecord and foreign key

- [x] Include more than one model class (e.g. User, Post, Category)- User model class and List model class

- [x] Include at least one has_many relationship on your User model (e.g. User has_many Posts)- User has many lists

- [x] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User)- Lists belong to users

- [x] Include user accounts with unique login attribute (username or email)- Users are able to create an account, User model validates uniqueness of username

- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying- ListsController contains all routes for CRUDing a user's lists

- [x] Ensure that users can't modify content created by other users- current_user, logged_in? and require_login methods in ApplicationController used in ListsController throughout CRUD routes, ensures that users can only modify the content that they created

- [x] Include user input validations- User model validates username and password, users can't sign up or log in without filling out both username and password fields

- [x] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)- Users will see an error message if they try signing up or logging in with either username or password field not filled in, or if they enter the wrong information or try signing up with a username that is already taken

- [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code- README.md includes all of the above



Confirm
- [x] You have a large number of small Git commits- Many commits throughout project build

- [x] Your commit messages are meaningful- Detailed notes specified for each commit

- [x] You made the changes in a commit that relate to the commit message- Changes in commit always relate to commit message

- [x] You don't include changes in a commit that aren't related to the commit message- See above, changes in commit always related to commit message