# Vegetaux website

Built using [Ruby on Rails](http://rubyonrails.org/)

## Prerequisites

You will need the following things properly installed on your computer.

* [Ruby](https://www.ruby-lang.org)
* [Postgres](http://www.postgresql.org/)

## Installation

* `bundle install`
* follow instructions in `application.example.yml`
* `rake db:create`
* `rake db:migrate`
* `rake db:seed`

## Running / Development

* `foreman start -f Procfile.dev`
* Visit your app at http://0.0.0.0:5000