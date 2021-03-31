# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Product.destroy_all
Store.destroy_all
s1 = Store.create(name:"BestBuy", location:"Chicago")
s2 = Store.create(name:"Fry's Electronics", location:"Houston")
s3 = Store.create(name:"Discount Electronics", location:"Baton Rouge")
>>>>>>> hadichloun
p1 = Product.create(name: "Iphone", price: 100)
p2 = Product.create(name: "Android", price: 50)
p3 = Product.create(name: "Laptop", price: 500)
p4 = Product.create(name: "Desktop", price: 800)
p5 = Product.create(name: "Headphones", price: 45)
p6 = Product.create(name: "Backpack", price: 125)

u1 = User.create(name: "Jose Mendoza", password: "123")
u2 = User.create(name: "Hadi Chloun", password: "123")
UserProduct.create(user: u1, product: p1)
StoreProduct.create(store: s1, product: p2)

User.create(name: "Jose", email: "jose@jose.com", password: "jose")

