# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# USERS WITH BIKES

#DOMINGO
domingo_avatar = URI.open("https://i.imgur.com/pO5BP5u.jpeg")

domingo = User.create(email: "domingo@gmail.com", password: "holahola", name: "Domingo Samaniego", address: "Chile", phone: "56 9 48624538" )
domingo.avatar.attach(io: domingo_avatar, filename: "domingo.jpeg", content_type: "image/jpeg")
domingo.save

bike1_photo = URI.open("https://i.imgur.com/xjQJfSa.jpeg")

domingo_bike1 = Bike.create(brand: "Trek", model: "Mudripper", details: "Double Suspension", category: "Mountain Bike", wheel_size: 29, price: 999, user: domingo)
domingo_bike1.photos.attach(io: bike1_photo, filename: "domingo_bike1.jpeg", content_type: "image/jpeg")
domingo_bike1.save

bike2_photo = URI.open("https://i.imgur.com/Fx39ZTd.jpeg")

domingo_bike2 = Bike.create(brand: "Trek", model: "Urban", details: "Rigid frame", category: "City Bike", wheel_size: 26, price: 799, user: domingo)
domingo_bike2.photos.attach(io: bike2_photo, filename: "domingo_bike2.jpeg", content_type: "image/jpeg")
domingo_bike2.save

bike3_photo = URI.open("https://i.imgur.com/0b08pH3.jpeg")

domingo_bike3 = Bike.create(brand: "Trek", model: "Tiny Monster", details: "Foldable", category: "Folding Bike", wheel_size: 20, price: 1199, user: domingo)
domingo_bike3.photos.attach(io: bike3_photo, filename: "domingo_bike3.jpeg", content_type: "image/jpeg")
domingo_bike3.save

#STEFANO

stefano_avatar = URI.open("https://i.imgur.com/ND8DOCE.jpeg")

stefano = User.create(email: "stefano@gmail.com", password: "holahola", name: "Stefano Mandolesi", address: "Argentina", phone: "54 9 1155667788" )
stefano.avatar.attach(io: stefano_avatar, filename: "stefano.jpeg", content_type: "image/jpeg")
stefano.save

bike4_photo = URI.open("https://i.imgur.com/5arALAm.jpeg")

stefano_bike4 = Bike.create(brand: "Raleigh", model: "E-Racer", details: "Fully electric", category: "Electric Bike", wheel_size: 28, price: 1599, user: stefano)
stefano_bike4.photos.attach(io: bike4_photo, filename: "stefano_bike4.jpeg", content_type: "image/jpeg")
stefano_bike4.save

bike5_photo = URI.open("https://i.imgur.com/qqPlyx2.jpeg")

stefano_bike5 = Bike.create(brand: "Raleigh", model: "Super-B", details: "Light weight frame", category: "Mountain Bike", wheel_size: 30, price: 1099, user: stefano)
stefano_bike5.photos.attach(io: bike5_photo, filename: "stefano_bike5.jpeg", content_type: "image/jpeg")
stefano_bike5.save

bike6_photo = URI.open("https://i.imgur.com/qHJUrv6.jpeg")

stefano_bike6 = Bike.create(brand: "Raleigh", model: "Beachboy", details: "Ergonomic", category: "Cruiser Bike", wheel_size: 26, price: 749, user: stefano)
stefano_bike6.photos.attach(io: bike6_photo, filename: "stefano_bike6.jpeg", content_type: "image/jpeg")
stefano_bike6.save

#JORGE

jorge_avatar = URI.open("https://i.imgur.com/4Kllm3W.jpeg")

jorge = User.create(email: "jorge@gmail.com", password: "holahola", name: "Jorge Montenegro", address: "Peru", phone: "51 9 589632478" )
jorge.avatar.attach(io: jorge_avatar, filename: "jorge.jpeg", content_type: "image/jpeg")
jorge.save

bike7_photo = URI.open("https://i.imgur.com/XPi8Yrm.jpeg")

jorge_bike7 = Bike.create(brand: "Giant", model: "Flippy", details: "Tough as it comes", category: "BMX", wheel_size: 24, price: 1399, user: jorge)
jorge_bike7.photos.attach(io: bike7_photo, filename: "jorge_bike7.jpeg", content_type: "image/jpeg")
jorge_bike7.save

bike8_photo = URI.open("https://i.imgur.com/2IHH4cp.jpeg")

jorge_bike8 = Bike.create(brand: "Giant", model: "Hyperfast", details: "Aluminum frame", category: "Road Bike", wheel_size: 27, price: 1650, user: jorge)
jorge_bike8.photos.attach(io: bike8_photo, filename: "jorge_bike8.jpeg", content_type: "image/jpeg")
jorge_bike8.save

# Road Bike - Mountain Bike - City Bike - Folding Bike - Fixed Gear Bike - BMX - Recumbent Bike - Cruiser Bike - Hybrid Bike - Cyclocross Bike - Electric Bike