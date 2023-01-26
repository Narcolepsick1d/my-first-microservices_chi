//todo

# NOT PROD APP JUST FOR TESTING

## Front-end+Broker-service+Auth+mail+logger

## Postgres+Mongo+(Rabbit MQ || RPC)


**MAKEFILE FOR WINDOWS USERS    :)**

2 command to start app

### make start

### make up_build


For connection to Postgres I used Beekeeper  
Database username:users

Name:admin

Password:password


Connection to mongo db with Compass:

mongodb://admin:password@localhost:27017/logs?authSource=admin&readPreference=primary&directConnection=true&ssl=false

iIn broker-service/cmd/api/handlers.go line 55 switch case log I have 3 opportunity to register log
1. Just Logger
2. With RabbitMQ
3. RPC 

Just read the code and you will find your preference 