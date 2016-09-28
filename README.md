# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

Postgres Setup:
1) Install Postgres - sudo apt-get install postgresql postgresql-contrib libpq-dev
2) Create User - sudo -u postgres createuser -s portfolio_pguser
3) If you want to set a password for the database user, enter the PostgreSQL console with this command:
	sudo -u postgres psql
4) The PostgreSQL console is indicated by the postgres=# prompt. At the PostgreSQL prompt, enter this command to set the password for the database user that you created:

    \password portfolio_pguser

5) Enter your desired password at the prompt, and confirm it.

Now you may exit the PostgreSQL console by entering this command:

    \q

6) rails new appname -d postgresql


Add custom.css file


Heroku Commands:
sudo apt-get install pgadmin3 - Install pgadmin to see postgre sql admin panel.
heroku run rails console - Like Rails c
heroku run rake db:migrate - Run migrations
heroku restart - Restart heroku app 
