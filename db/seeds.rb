# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
User.destroy_all
RestaurantOwner.destroy_all 
Restaurant.destroy_all 
Review.destroy_all 
Reservation.destroy_all 
Follow.destroy_all 

p "Generating Seed Data..."

25.times do 
    User.create(username: Faker::Name.name, password: Faker::Music::RockBand.name, age: rand(17..65))
end 

15.times do 
    RestaurantOwner.create(username: Faker::Name.name, password: Faker::Music::RockBand.name)
end 

Restaurant.create(name: "All American Burger" , address: "4286 Merrick Rd, Massapequa, NY 11758", type: "Burger Joint", restaurant_owner_id: RestaurantOwner.all.sample.id, menu_url: "https://www.allamericanhamburgerli.com/menu", image_url: "https://images.app.goo.gl/7ud2vA4X5vgooG5u7", hours_of_operation: "11 AM - 8 PM M-Sunday")
Restaurant.create(name: "Ginza", address: "45 Carmans Rd, Massapequa, NY 11758", type: "Japanese", restaurant_owner_id: RestaurantOwner.all.sample.id, menu_url: "https://www.ginzali.com/menu", image_url: "https://images.app.goo.gl/gVnKQpeUyCp3ePbP8", hours_of_operation: "Temporarily Closed")
Restaurant.create(name: "Thom Thom", address: "3340 Park Ave, Wantagh, NY 11793", type: "Sushi/Steakhouse", restaurant_owner_id: RestaurantOwner.all.sample.id, menu_url: "https://www.thomthomrestaurant.com/menu", image_url: "https://images.app.goo.gl/B4X8S1FsLTNQVb8B6", hours_of_operation: "4 PM - 11 PM M-Saturday, 3 PM - 8 PM Sunday")
Restaurant.create(name: "The Campagne House", address: "339 Broadway, Bethpage, NY 11714", type: "Gastropub", restaurant_owner_id: RestaurantOwner.all.sample.id, menu_url: "https://campagnehouse.com/menu/", image_url: "https://images.app.goo.gl/CX3NyEDgKkuzGaUj7", hours_of_operation: "11 AM - 11 PM Sunday to Thursday, 11 AM - 2:30 AM Friday-Saturday")
Restaurant.create(name: "Nagahama", address: "169 E Park Ave, Long Beach, NY 11561", type: "Sushi", restaurant_owner_id: RestaurantOwner.all.sample.id, menu_url: "http://www.nagahamasushi.com/menus.html", image_url: "https://images.app.goo.gl/uMBnf7WjEB9yTc2Y7", hours_of_operation: "4 PM - 11 PM")
Restaurant.create(name: "Peter's Clam Bar", address: "600 Long Beach Rd, Island Park, NY 11558", type: "Seafood", restaurant_owner_id: RestaurantOwner.all.sample.id, menu_url: "https://www.petersclamhouse.com/menu/restaurant-menu/", image_url: "https://images.app.goo.gl/ULijMmUrfvhAxFY28", hours_of_operation: "11 AM - 11 PM")
Restaurant.create(name: "Mio Posto", address: "16 Merrick Ave, Merrick NY 11566", type: "Italian", restaurant_owner_id: RestaurantOwner.all.sample.id, menu_url: , image_url: , hours_of_operation: "5 PM - 10 PM")
Restaurant.create(name: "Gyro Palace", address: "1694 Sunrise Highway, Merrick, NY 11566", type: "Greel", restaurant_owner_id: RestaurantOwner.all.sample.id, menu_url: "https://www.gyropalacemerrick.com/categories?menu=1", image_url: , hours_of_operation: "11 PM - 9 PM")
Restaurant.create(name: "Kyma", address: "1446 Old Northern Blvd, Roslyn, NY 11576", type: "Greek", restaurant_owner_id: RestaurantOwner.all.sample.id, menu_url: "https://kyma-roslyn.com/wp-content/uploads/2020/05/KYMA-to-go-Menu-6.pdf", image_url: , hours_of_operation: "1130 AM - 10 PM")
Restaurant.create(name: "Cipollini", address: "2110 Northern Blvd, Manhasset, NY 11030", type: "Italian", restaurant_owner_id: RestaurantOwner.all.sample.id, menu_url: "https://www.pollrestaurants.com/media//cms/Cipollini_Dinner_1.pdf", image_url: , hours_of_operation: "12 PM - 11 PM")

20.times do 
    Reservation.create( user_id: User.all.sample.id, restaurant_id: Restaurant.all.sample.id, date: Faker::Date.in_date_period, time: rand(1..12), party: rand(1..6))
end 

20.times do 
    Review.create(user_id: User.all.sample.id, restaurant_id: Restaurant.all.sample.id, rating: rand(1..5), content: Faker::Restaurant.review)
end 

10.times do 
    Follow.create(followee_id: User.all.sample.id, follower_id: User.all.sample.id)
end 

p "Done."