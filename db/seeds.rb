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

Restaurant.create(name: "All American Burger" , address: "4286 Merrick Rd, Massapequa, NY 11758", restaurant_type: "American Grille", restaurant_owner_id: RestaurantOwner.all.sample.id, menu_url: "https://www.allamericanhamburgerli.com/menu", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScKOEp0u4tC7cCcBv9kXwjqH-ERunRjBFAkRsmwIiRKLDqJW5tLQ&s", hours_of_operation: "11 AM - 8 PM M-Sunday")
Restaurant.create(name: "Ginza", address: "45 Carmans Rd, Massapequa, NY 11758", restaurant_type: "Japanese", restaurant_owner_id: RestaurantOwner.all.sample.id, menu_url: "https://www.ginzali.com/menu", image_url: "https://lirp-cdn.multiscreensite.com/9d9760cd/dms3rep/multi/opt/photo%202-1920x1278-640w.JPG", hours_of_operation: "Temporarily Closed")
Restaurant.create(name: "Thom Thom", address: "3340 Park Ave, Wantagh, NY 11793", restaurant_type: "Sushi/Steakhouse", restaurant_owner_id: RestaurantOwner.all.sample.id, menu_url: "https://www.thomthomrestaurant.com/menu", image_url: "https://images.otstatic.com/prod/25110521/1/huge.jpg", hours_of_operation: "4 PM - 11 PM M-Saturday, 3 PM - 8 PM Sunday")
Restaurant.create(name: "The Campagne House", address: "339 Broadway, Bethpage, NY 11714", restaurant_type: "Gastropub", restaurant_owner_id: RestaurantOwner.all.sample.id, menu_url: "https://campagnehouse.com/menu/", image_url: "https://media-cdn.tripadvisor.com/media/photo-s/0c/70/40/eb/20160807-174704-largejpg.jpg", hours_of_operation: "11 AM - 11 PM Sunday to Thursday, 11 AM - 2:30 AM Friday-Saturday")
Restaurant.create(name: "Nagahama", address: "169 E Park Ave, Long Beach, NY 11561", restaurant_type: "Sushi", restaurant_owner_id: RestaurantOwner.all.sample.id, menu_url: "http://www.nagahamasushi.com/menus.html", image_url: "https://lh4.googleusercontent.com/proxy/Q-p0SVKOp2JtCC8vtUzU_-4jhEfMZQNYwnnQvKAYXv5XkcYrRE1SXfOf6AtGzbEfcc6Nb-2fSgLXTbDYFb6D7q9sQJweKLhy6I8Anm27gSkd_9ps", hours_of_operation: "4 PM - 11 PM")
Restaurant.create(name: "Peter's Clam Bar", address: "600 Long Beach Rd, Island Park, NY 11558", restaurant_type: "Seafood", restaurant_owner_id: RestaurantOwner.all.sample.id, menu_url: "https://www.petersclamhouse.com/menu/restaurant-menu/", image_url: "https://media-cdn.tripadvisor.com/media/photo-s/0b/3e/41/51/peters-clam-bar.jpg", hours_of_operation: "11 AM - 11 PM")
Restaurant.create(name: "Mio Posto", address: "16 Merrick Ave, Merrick NY 11566", restaurant_type: "Italian", restaurant_owner_id: RestaurantOwner.all.sample.id, menu_url: "https://zmenu.com/mio-posto-merrick-online-menu/", image_url: "https://cdn.usarestaurants.info/assets/uploads/d161ad01f34f8248497fd020b5d2c724_-united-states-new-york-nassau-county-hempstead-merrick-mio-posto-merrick-516-665-3030htm.jpg", hours_of_operation: "5 PM - 10 PM")
Restaurant.create(name: "Gyro Palace", address: "1694 Sunrise Highway, Merrick, NY 11566", restaurant_type: "Greek", restaurant_owner_id: RestaurantOwner.all.sample.id, menu_url: "https://www.gyropalacemerrick.com/categories?menu=1", image_url: "https://www.gyropalacemerrick.com/assets/storefront-1d1423e88bdac986c4c94935ef902cd090585af1f4486dfae6233c8d1a44573b.jpg", hours_of_operation: "11 PM - 9 PM")
Restaurant.create(name: "Kyma", address: "1446 Old Northern Blvd, Roslyn, NY 11576", restaurant_type: "Greek", restaurant_owner_id: RestaurantOwner.all.sample.id, menu_url: "https://kyma-roslyn.com/wp-content/uploads/2020/05/KYMA-to-go-Menu-6.pdf", image_url: "https://cdn.newsday.com/polopoly_fs/1.5310659.1374163864!/httpImage/image.jpg_gen/derivatives/landscape_768/image.jpg", hours_of_operation: "1130 AM - 10 PM")
Restaurant.create(name: "Cipollini", address: "2110 Northern Blvd, Manhasset, NY 11030", restaurant_type: "Italian", restaurant_owner_id: RestaurantOwner.all.sample.id, menu_url: "https://www.pollrestaurants.com/media//cms/Cipollini_Dinner_1.pdf", image_url: "https://www.americanamanhasset.com/media/images/Cipollini_Al_Fresco_Dining_front_.2e16d0ba.fill-1200x600.jpg", hours_of_operation: "12 PM - 11 PM")
Restaurant.create(name: "Kasey's", address: "23 N Park Ave, Rockville Centre, NY, 11570", restaurant_type: "American", restaurant_owner_id: RestaurantOwner.all.sample.id , menu_url: "https://www.kaseysrvcny.com/wp-content/uploads/2020/06/Rooftop-32-Menu-website.pdf", image_url: "http://longislandleisure.com/wp-content/uploads/2015/06/12004920_889588584465891_5016005010258930870_n2.jpg", hours_of_operation: "Monday - Sunday 2pm - 10pm")
Restaurant.create(name: "Anchor Down", address: "1960 Bayberry Ave, Merrick,NY, 11566", restaurant_type: "Seafood", restaurant_owner_id: RestaurantOwner.all.sample.id, menu_url: "https://menupages.com/anchor-down/1960-bayberry-ave-merrick/" , image_url: "https://content.idine.com/images/merchant/restaurant_images/8125017P1.jpg", hours_of_operation: "Monday - Sunday 2pm - 10pm")
Restaurant.create(name: "Top Hat", address: "106 Bedford Ave, Bellmore, NY, 11710", restaurant_type: "Creole", restaurant_owner_id: RestaurantOwner.all.sample.id, menu_url: "https://tophatoysterbar.com/wp-content/uploads/2020/04/Top-Hat-Menu-April-Take-out.jpg" , image_url: "https://content.idine.com/images/merchant/restaurant_images/8134727P1.jpg", hours_of_operation: "Monday - Sunday 2pm - 10pm")
Restaurant.create(name: "Waterzooi", address: "850 Franklin Ave, Garden City, NY, 11530", restaurant_type: "Belgian", restaurant_owner_id: RestaurantOwner.all.sample.id, menu_url: "https://waterzooi.com/garden-city/menus/dinner/" , image_url: "https://media-cdn.tripadvisor.com/media/photo-s/11/7d/77/15/back-of-restaurant.jpg", hours_of_operation: "Monday - Sunday 2pm - 10pm")
Restaurant.create(name: "Brixx & Barley", address: "152 W Park Ave, Long Beach, NY, 11561", restaurant_type: "Pizza", restaurant_owner_id: RestaurantOwner.all.sample.id, menu_url: "https://4d9cf48b-407e-43aa-aa00-8279172accc0.filesusr.com/ugd/e21fe2_9655c3f0fc874bb5875ba1154a130a71.pdf" , image_url: "https://cdn.newsday.com/polopoly_fs/1.34840907.1565401303!/httpImage/image.jpg_gen/derivatives/landscape_1280/image.jpg", hours_of_operation: "Monday - Sunday 2pm - 10pm")
Restaurant.create(name: "Snaps", address: "2010 Wantag Ave, Wantagh, NY, 11793", restaurant_type: "American", restaurant_owner_id: RestaurantOwner.all.sample.id, menu_url: "https://3fa56b7a-134d-41d6-8396-18c4d1add95c.filesusr.com/ugd/2a8cc6_6670416f43ab49a3ab0bd67f467cb15e.pdf" , image_url: "https://lirestaurantchic.files.wordpress.com/2016/08/snaps.jpg", hours_of_operation: "Monday - Sunday 2pm - 10pm")
Restaurant.create(name: "Thai Station", address: "2161 Merrick Ave, Merrick, NY, 11566", restaurant_type: "Thai", restaurant_owner_id: RestaurantOwner.all.sample.id, menu_url: "https://www.menuwithprice.com/menu/thai-station-restaurant/new-york/merrick/419531/" , image_url: "https://media-cdn.tripadvisor.com/media/photo-s/0f/ea/5b/41/photo2jpg.jpg", hours_of_operation: "Monday - Sunday 2pm - 10pm")
Restaurant.create(name: "Press 195", address: "22 N Park Ave, Rockville Centre, NY, 11570", restaurant_type: "Sandwich", restaurant_owner_id: RestaurantOwner.all.sample.id, menu_url: "http://www.press195.com/rvctakeout.pdf" , image_url: "https://d6vrtzdlbankn.cloudfront.net/wp-content/uploads/2015/02/article-feature/749e8fb05a2f37f6be11e53f4f5825db-600x420.jpg", hours_of_operation: "Monday - Sunday 2pm - 10pm")
Restaurant.create(name: "The Cheesecake Factory", address: "1504 Old Country Rd, Westbury, NY 11590", restaurant_type: "American", restaurant_owner_id: RestaurantOwner.all.sample.id, menu_url: "https://www.thecheesecakefactory.com/menu/" , image_url: "https://s3-media0.fl.yelpcdn.com/bphoto/wrL2O-atmOAQ2vcMJfkNJg/l.jpg", hours_of_operation: "Monday - Sunday 2pm - 10pm")

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

