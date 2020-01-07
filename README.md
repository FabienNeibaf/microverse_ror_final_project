# Final Project

A Facebook-like social network. Users can create, like, and comment on posts. Users can also add/remove friends, and receive notifications for updates.

![Earthdiary](https://github.com/FabienNeibaf/Portfolio/blob/master/src/images/Earthdiary.png)

# Technologies
- Ruby on Rails
- Javascript
- JQuery
- PostgreSQL

# Installation

1. Install **PostgreSQL**. Follow that [link](https://www.2ndquadrant.com/en/blog/pginstaller-install-postgresql/) or that [one](https://hostadvice.com/how-to/how-to-install-postgresql-database-server-on-ubuntu-18-04/)
2. If you're using Ubuntu, you still need to run these two commands to avoid some errors
   - `sudo apt-get install python-psycopg2`
   - `sudo apt-get install libpq-dev`
3. Connect to the adminstration console through `su - postgres` and then `psql`
4. Create a new role called **microverse_ror_final_project** with password _microverse_ using `create role microverse_ror_final_project with createdb login password 'microverse';`
5. Run `bundle install`
6. Run `rails db:setup`
7. Run `rails s`
8. Open your browser and go to `http://localhost:3000`

# Testing

We use RSPEC for testing.  
The integration test is done via _capybara-webkit_. In order to run the test inside _features_ folder you need to run rspec prefixed by `xvfb-run -a` command.

- `rspec spec/models` and `xvfb-run -a rspec spec/features`  
   _or just:_
- `xvfb-run -a rspec` to run all the tests in the same time.

:gem: When running **bundle install** _capybara-webkit_ gem will require some native extensions like Qt and others.  
Follow the instruction given here if you encounter difficulty during installation: _https://github.com/thoughtbot/capybara-webkit/wiki/Installing-Qt-and-compiling-capybara-webkit_.

# Live demo

The project is hosted on heroku. So go there and have fun. (_https://earthdiary.herokuapp.com_)

# Authors

- Fabien RAKOTOMAMPIANDRA _https://github.com/FabienNeibaf_
- Mael FOSSO _https://github.com/maelfosso_

# Follow me
- [Email](fabienrakotomampiandra@gmail.com)
- [LinkedIn](https://www.linkedin.com/in/fabien-rakotomampiandra-96567b17b/)
- [AngelList](https://angel.co/fabien-rakotomampiandra)
- [Twitter](https://twitter.com/Neibaflintone)
