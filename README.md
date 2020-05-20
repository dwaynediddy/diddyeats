# rails-marketplace
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
people who like food

## techstack
- ruby gems (see Deplyoyment instructions)
- ruby on rails
- html
- css
- JavaScript
- postgresql
- heroku
- amazon, aws/s3

## user stories for app
- secure login 
- add profile picture
- see options on the market place
- use off a search bar to narrow down what im looking for
- have a safe and secure checkout
- safely store my details so i don't have to enter them each time

## wireframes for app

<details><br>

![wireframe1](/config/docs/smartphonesignups.png)
![wireframe2](/config/docs/ipadbusinessprofile.png)
![wireframe3](/config/docs/smartphonepaertonprofile.png)
![wireframe4](/config/docs/pcmarketplace.png)
![wireframe5](/config/docs/ipad.checkoutpage.png)
![wireframe6](/config/docs/PCsignuppage.png)

</details>

---

## ERD for app
![ERD](/config/docs/erd.png)

## high level components
Devise being the first component encountered when using the app having a sign up and sign in option when a user signs up or signs in the option to log out will replace sign in hitting this option will destroy the current users session after sign up/in  you can link to marketplace. The marketplace gives you the option to "show" what resteraunts have posted resteraunts can create posts if role is admin/business_role using rolify, aswell as edit if current_patron is not it will route patron straight to marketplace.

(may not be done at time of reading)
eventually when the resteraunt adds menu_items and prices the patron will then be able to tickbox items to send to checkout which will relocate them to the 3rd party which handles transactions


---

## third party services used
- postgresql - for database
- heroku - used to deploy app
- AWS/s3
- insert payment 3rd party
- devise gem
- rolify gem
- stripe gem added (may not be used at current time)

## Describe your projects models in terms of the relationships (active record associations) they have with each other
This project Diddy eats was modelled after UberEats at this time where social distancing is crucial
this model would surely be utilised while timing and skill have completely left out the role of a driver a pick up option (may or may not be added by submission) could still make this relevant relating the marketplace with many businesses and many patrons belonging to it, while the marketplace belongs to a patron it can display one image and many items to be purchased. 

##	Discuss the database relations to be implemented in your application
originally planned for the database to contain a marketplace relating to many patrons and businesses
where a single patron could connect to many businesses via the marketplace although the relationship between patron and this marketplace was purely to be able to view posts which only businesses could post, show and edit. this Admin role was given to resteraunts via sign in by ticking the "im a resteraunt box" which was visible until installing rolify and not being able to find a solution it may not be displayed at this time. with rolify and device being needed to create roles and device needed to store passwords and usernames and encrypt them to remain secure.

## schema design
<details><summary>schema design </summary><br>
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_19_043515) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "assignments", force: :cascade do |t|
    t.bigint "patron_id", null: false
    t.bigint "role_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["patron_id"], name: "index_assignments_on_patron_id"
    t.index ["role_id"], name: "index_assignments_on_role_id"
  end

  create_table "marketplaces", force: :cascade do |t|
    t.bigint "patron_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["patron_id"], name: "index_marketplaces_on_patron_id"
  end

  create_table "menu_items", force: :cascade do |t|
    t.string "name", limit: 25
    t.decimal "price", precision: 2, scale: 2
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "marketplace_id", null: false
    t.index ["marketplace_id"], name: "index_menu_items_on_marketplace_id"
  end

  create_table "patrons", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "admin", default: false
    t.boolean "business_role"
    t.string "username"
    t.string "city"
    t.string "streetname"
    t.integer "phone"
    t.index ["email"], name: "index_patrons_on_email", unique: true
    t.index ["reset_password_token"], name: "index_patrons_on_reset_password_token", unique: true
  end

  create_table "patrons_roles", id: false, force: :cascade do |t|
    t.bigint "patron_id"
    t.bigint "role_id"
    t.index ["patron_id", "role_id"], name: "index_patrons_roles_on_patron_id_and_role_id"
    t.index ["patron_id"], name: "index_patrons_roles_on_patron_id"
    t.index ["role_id"], name: "index_patrons_roles_on_role_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.string "resource_type"
    t.bigint "resource_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["resource_type", "resource_id"], name: "index_roles_on_resource_type_and_resource_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "views", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_views_on_email", unique: true
    t.index ["reset_password_token"], name: "index_views_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "assignments", "patrons"
  add_foreign_key "assignments", "roles"
  add_foreign_key "marketplaces", "patrons"
  add_foreign_key "menu_items", "marketplaces"
end
</details>

## Describe the way tasks are allocated and tracked in your project
Tasks are allocated with the basic necessaties first following a hierachy of tasks, who the task is for and differculty of said task. pulled to a "doing" colum when in progress to a  "done" column when complete using. While tasks that would not be implemented before the deadline where carefully weighed up in relevance and regrettably abandon if the oppertunity was not plausable for the greater outcome.

Trello board: https://trello.com/b/HToipMnw/diddyeats
![trello](/docs/trello.png)


---

##    Deployment instructions

### Ruby version 2.7.0
### gem list added to Gemfile

gem "devise"

gem 'rolify'

gem 'stripe'

### run in terminal

git clone

bundle install

---

## slide deck

https://docs.google.com/presentation/d/1kjWrfh7O9tXcL96npNLssrkz75WUvn2a8OI12tytFi4/edit?usp=sharing

---








