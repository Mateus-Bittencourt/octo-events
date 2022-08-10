# README

# Octo Events API

> Octo Events is an application that listens to Github Events via webhooks and expose by an api for later use.


* Ruby version
  3.1.2

* Rails version
  Rails 7.0.3.1

* Postgre version
  PostgreSQL 12
  
 Clone this repository then:

## Database creation and initialization

run in your terminal:
```
rails db:create db:migrate
```

## 💻 How to install

To install the project on your machine, follow these steps:

* Configuration
  Install ngrok, create an account and set your Authtoken with the command:
```
ngrok config add-authtoken <token>
```
  then run ngrok with the command:
```
ngrok http 3000
```

Clone this repository and install the dependencies with the following commands in your terminal:
```
bundle install
```
```
yarn install
```
then in config/environments/development.rb add the following line with the ngrok path:
```
 config.hosts << 'path.ngrok.io'
```

then you should create a webhook in a github repository by following these links:

 * Webhooks Overview: https://developer.github.com/webhooks/
 * Creating Webhooks : https://developer.github.com/webhooks/creating/

--> Now every time that you make an issue event, this issue will automatically registered in the database of this application


## Run application
```
rails s
```

## Accessing records in the database

All the issues are avaible in path:
```
http://localhost:3000/api/v1/issues/
```
All events by issue number are avaible in path:
```
http://localhost:3000/api/v1/issues/<number>/events
```
You may access a indivual issue by id with path
```
http://localhost:3000/api/v1/issues/<id>
```
