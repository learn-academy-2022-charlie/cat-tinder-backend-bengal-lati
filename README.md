# Backend Setup

## Commands
```
$ rails new bengal-lati-backend -d postgresql -T --api
```
--api only generates the required files for a backend API, and removes frontend views

```
$ cd bengal-lati-backend
```
Uncommented ```gem 'rack-cors'``` in the Gemfile and added ``` , :require => 'rack/cors'``` to the end of the same line
```
$ bundle install
```

Uncommented the following code in ```config/initializers/cors.rb```
```ruby
Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins "*"

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

Added RSpec and generated initial test
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
$ rspec spec
```
## Seeding

Updated seeds.rb with new data:
```ruby
cars = [
    {
        name:'Dodge Dakota',
        year: 2002,
        enjoys: 'Back roads and mud holes',
        image: 'https://live.staticflickr.com/1076/5115638748_acf542ef3e_b.jpg'
    },
    {
        name:'Hyundai Genesis',
        year: 2010,
        enjoys: 'Going fast',
        image: 'https://www.flickr.com/photos/8058098@N07/14335646879'
    },
    {
        name:'GMC Sierra 3500',
        year: 2017,
        enjoys: 'Towing stuff and taking names',
        image: 'https://scontent-sjc3-1.xx.fbcdn.net/v/t1.6435-9/89196142_10221320215384910_3811005725342171136_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=2OTLctxG2hgAX_mSzct&_nc_ht=scontent-sjc3-1.xx&oh=00_AT_4mmQxbtOtCIXkft8z_Ed2SNbdKiAQPOdr97OjFVHF4Q&oe=62E371F4'
    },
    {
        name: 'DMC Delorean',
        year: 2050,
        enjoys: 'Historical Reenactments and going over 88mph',
        image: 'https://images.unsplash.com/photo-1596835383815-144ba32d06ca?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80'
    }
]

cars.each do |attr|
    Car.create attr
    puts "Created car #{attr}"
end
```
Seeded items into Cars database
```
$ rails db:seed
```

Connected GitHub Repo to local repo
```
$ git remote add origin https://github.com/learn-academy-2022-charlie/cat-tinder-backend-bengal-lati.git
$ git add .
$ git commit -m 'Initial Commit - Backend Intro'
$ git push origin main
```

THE ONLY STEP
```
$ rails g scaffold Car name:string year:integer enjoys:text image:text
```
NOTE: If we use --api when creating rails app, we DO NOT NEED verify_authenticity_token

```ruby
  let(:valid_attributes) {
    # {
    #   name:'Dodge Dakota',
    #   year: 2002,
    #   enjoys: 'Back roads and mud holes',
    #   image: 'https://live.staticflickr.com/1076/5115638748_acf542ef3e_b.jpg'
    # }
    {
      "name" => "Dodge Dakota",
      "year" => 2002, 
      "enjoys" => "Back roads and mud holes",
      "image" => "https://live.staticflickr.com/1076/5115638748_acf542ef3e_b.jpg"
    }
  }
  
  let(:invalid_attributes) {
    {
      "name" => nil,
      "year" => nil, 
      "enjoys" => nil,
      "image" => nil
    }
  }
```

## API Validations

- In ```spec/models/car_spec.rb``` created tests