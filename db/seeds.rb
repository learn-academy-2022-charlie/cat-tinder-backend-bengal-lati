# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

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