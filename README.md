# README
# diddyeats

## purpose problem and solution
While we are inundate with COVID-19 and everyone is segregated from their favourite dining saloon, Let 
Diddyeats© help you find the best food at the best prices! and have you assimilating your food in no time!
with the words first ever, never been done before app of this kind *diclaimer(has definitly been done before)

This app aims to have you ability to sign up an account securly creating a profile allowing you to access 
resteraunts via the app.

---

## URL

Deployed website here: https://secret-sea-36538.herokuapp.com/

Git Repositories here: https://github.com/dwaynediddy/diddyeats
---

## functionality/features
- ability to create a patron account, business account and driver account(may not be finished at time of reading)

- secure authentication and authorization

- administration features with accounts

- (potentially) driver instant message feature

- (potentially) secure payment details stored securly in (3rd party) Database

- (potentially) basket to store items and checkout options

- (potentially) rating system

## sitemap
![Sitemap](/config/docs/sitemap.png)

## taget audience

## techstack
- ruby gems (see Deplyoyment instructions)
- ruby on rails
- html
- css
- JavaScript
- postgresql
- heroku

## user stories for app

## wireframes for app

## ERD for app
![ERD](/config/docs/erd.png)

## high level components

## third party services used
- postgresql - what it do
- heroku - what it do
- (insert image sharing service)
- (insert payment 3rd party)
- 

## Describe your projects models in terms of the relationships (active record associations) they have with each other

##	Discuss the database relations to be implemented in your application

## schema design

## Describe the way tasks are allocated and tracked in your project
https://trello.com/b/HToipMnw/diddyeats


## URL
Deployed website here: https://secret-sea-36538.herokuapp.com/
Git Repositories here: https://github.com/dwaynediddy/diddyeats

---

#    Deployment instructions

## Ruby version 2.7.0
## gem list added to Gemfile
gem "devise"
gem "cancancan", '~> 1.10'

### run in terminal
rails g cancan:ability
rails g devise:install

bundle install

---

## slide deck

---








