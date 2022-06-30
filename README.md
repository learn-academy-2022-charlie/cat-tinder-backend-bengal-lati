# Backend Setup

## Commands
```
$ rails new bengal-lati-backend -d postgresql -T --api
```
> --api only generates the required files for a backend API, and removes frontend views

```
$ cd bengal-lati-backend
```
Uncommented ```gem 'rack-cors'``` in the Gemfile
```
$ bundle install
```

Uncommented the following code in ```config/initializers/cors.rb```
```ruby
Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins "example.com"

    resource "*",
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end
```
Created Database:
```
$ rails db:create
```

Added RSpec and generated inital test
```
$ bundle add rspec-rails
$ rails generate rspec:install
```

Generated Resources/Model
```
$ rails generate resource Car name:string year:integer enjoys:text image:text
$ rails db:migrate
```

Tested RSpec
```
rspec spec
```