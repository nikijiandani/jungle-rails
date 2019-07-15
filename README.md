# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example. Forked and cloned from [https://github.com/lighthouse-labs/jungle-rails](https://github.com/lighthouse-labs/jungle-rails)

## Final Product

### Home Page/ Catalogue
A visitor can can view the overall rating of products as they browse the catalog.
!["home page"](/app/assets/images/home_page.gif)

### Product Show Page
A visitor can view the list of ratings and reviews when viewing the product detail page.
!["product show page"](/app/assets/images/product_show.png)

### Login Page
A Visitor can sign in using their e-mail and password.
!["login page"](/app/assets/images/login.png)

### New User Registration Page
A Visitor can sign up for a user account with an e-mail, password, first name and last name.
!["user registration page"](/app/assets/images/user_registration.png)

### Create Reviews
A logged in user can rate & review a product in a single step.
!["create review"](/app/assets/images/create_review.gif)


## Setup

1. Fork & Clone
2. Run `bundle install` to install dependencies
3. Create `config/database.yml` by copying `config/database.example.yml`
4. Create `config/secrets.yml` by copying `config/secrets.example.yml`
5. Run `bin/rake db:reset` to create, load and seed db
6. Create .env file based on .env.example
7. Sign up for a Stripe account
8. Put Stripe (test) keys into appropriate .env vars
9. Run `bin/rails s` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe
