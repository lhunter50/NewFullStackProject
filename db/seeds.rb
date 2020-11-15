lock = User.find_or_create_by(username:"lock", userEmail:"luxstme@gmail.com")

Product.create(name:"N64 w/ Controller", description:"Used N64 w/ controller", price:100)

Product.create(name:"N64 w/ Expansion Pak", description:"Used N64 w/ Expansion Pak", price: 40)

Product.create(name:"Gold N64 SEALED", description:"Never used, sealed", price: 700)

Product.create(name:"Jungle Green N64 SEALED", description:"Jungle Green Sealed N64", price: 400)

Product.create(name:"Ocarina of Time Collectors", description:"Complete Set of the OoT Collectors Edition", price: 250)

Product.create(name:"Lugia Gamecube SEALED", description:"Sealed Limited Edition Gamecube", price: 200)

Product.create(name:"N64 w/ No Controller", description:"Basically useless", price: 60)

Product.create(name:"White Wii USED", description:"Standard white Wii all accessories", price: 80)

Product.create(name:"Legend of Zelda: Wind Waker", description:"Comes with case and manual", price: 70)

Product.create(name:"Jungle Green N64 w/ Controller", description:"Used N64 w/ controller", price: 110)

puts "Created #{User.count} users"
puts "Created #{Product.count} stats"

# puts lock.errors.messages.inspect


#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?