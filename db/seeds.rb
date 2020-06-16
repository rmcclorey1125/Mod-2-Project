# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.destroy_all


Restaurant.create(name: "Kasey's", address: "23 N Park Ave, Rockville Centre, NY, 11570", type: "American", restaurant_owner_id: , menu_url: "https://www.kaseysrvcny.com/wp-content/uploads/2020/06/Rooftop-32-Menu-website.pdf", image_url: "http://longislandleisure.com/wp-content/uploads/2015/06/12004920_889588584465891_5016005010258930870_n2.jpg", hours_of_operation: "Monday - Sunday 2pm - 10pm")
Restaurant.create(name: "Anchor Down", address: "1960 Bayberry Ave, Merrick,NY, 11566", type: "Seafood", restaurant_owner_id: , menu_url: "https://menupages.com/anchor-down/1960-bayberry-ave-merrick/" , image_url: "https://content.idine.com/images/merchant/restaurant_images/8125017P1.jpg", hours_of_operation: "Monday - Sunday 2pm - 10pm")
Restaurant.create(name: "Top Hat", address: "106 Bedford Ave, Bellmore, NY, 11710", type: "Creole", restaurant_owner_id: , menu_url: "https://tophatoysterbar.com/wp-content/uploads/2020/04/Top-Hat-Menu-April-Take-out.jpg" , image_url: "https://content.idine.com/images/merchant/restaurant_images/8134727P1.jpg", hours_of_operation: "Monday - Sunday 2pm - 10pm")
Restaurant.create(name: "Waterzooi", address: "850 Franklin Ave, Garden City, NY, 11530", type: "Belgian", restaurant_owner_id: , menu_url: "https://waterzooi.com/garden-city/menus/dinner/" , image_url: "https://media-cdn.tripadvisor.com/media/photo-s/11/7d/77/15/back-of-restaurant.jpg", hours_of_operation: "Monday - Sunday 2pm - 10pm")
Restaurant.create(name: "All American Hamburger", address: "4286 Merrick Rd, Massapequa, NY, 11758", type: "Fast Food", restaurant_owner_id: , menu_url: "https://www.allamericanhamburgerli.com/menu" , image_url: "https://i.pinimg.com/originals/f4/07/9f/f4079fcc1679e2e53d1df56996710886.jpg", hours_of_operation: "Monday - Sunday 2pm - 10pm")
Restaurant.create(name: "Brixx & Barley", address: "152 W Park Ave, Long Beach, NY, 11561", type: "Pizza", restaurant_owner_id: , menu_url: "https://4d9cf48b-407e-43aa-aa00-8279172accc0.filesusr.com/ugd/e21fe2_9655c3f0fc874bb5875ba1154a130a71.pdf" , image_url: "https://cdn.newsday.com/polopoly_fs/1.34840907.1565401303!/httpImage/image.jpg_gen/derivatives/landscape_1280/image.jpg", hours_of_operation: "Monday - Sunday 2pm - 10pm")
Restaurant.create(name: "Snaps", address: "2010 Wantag Ave, Wantagh, NY, 11793", type: "American", restaurant_owner_id: , menu_url: "https://3fa56b7a-134d-41d6-8396-18c4d1add95c.filesusr.com/ugd/2a8cc6_6670416f43ab49a3ab0bd67f467cb15e.pdf" , image_url: "https://lirestaurantchic.files.wordpress.com/2016/08/snaps.jpg", hours_of_operation: "Monday - Sunday 2pm - 10pm")
Restaurant.create(name: "Thai Station", address: "2161 Merrick Ave, Merrick, NY, 11566", type: "Thai", restaurant_owner_id: , menu_url: "https://www.menuwithprice.com/menu/thai-station-restaurant/new-york/merrick/419531/" , image_url: "https://media-cdn.tripadvisor.com/media/photo-s/0f/ea/5b/41/photo2jpg.jpg", hours_of_operation: "Monday - Sunday 2pm - 10pm")
Restaurant.create(name: "Press 195", address: "22 N Park Ave, Rockville Centre, NY, 11570", type: "Sandwich", restaurant_owner_id: , menu_url: "http://www.press195.com/rvctakeout.pdf" , image_url: "https://d6vrtzdlbankn.cloudfront.net/wp-content/uploads/2015/02/article-feature/749e8fb05a2f37f6be11e53f4f5825db-600x420.jpg", hours_of_operation: "Monday - Sunday 2pm - 10pm")
Restaurant.create(name: "The Cheesecake Factory", address: "1504 Old Country Rd, Westbury, NY 11590", type: "American", restaurant_owner_id: , menu_url: "https://www.thecheesecakefactory.com/menu/" , image_url: "https://s3-media0.fl.yelpcdn.com/bphoto/wrL2O-atmOAQ2vcMJfkNJg/l.jpg", hours_of_operation: "Monday - Sunday 2pm - 10pm")

5.times do
    User.create(username:, password:, age:, current_location:)
end