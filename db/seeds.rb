puts "🌱 Seeding data..."

# Seed your database here

u1 = User.create( username: "Cage The Elephant" , password: 123 , nickname: Faker::Hipster.word)
u2 = User.create( username: "Rihianna" , password: 123 , nickname: Faker::Hipster.word)
u3 = User.create( username: "ASAP Rocky" , password: 123 , nickname: Faker::Hipster.word)
u4 = User.create( username: "Kanye West (Ye)" , password: 123 , nickname: Faker::Hipster.word)
u5 = User.create( username: "Dominic Fike" , password: 123 , nickname: Faker::Hipster.word)
u6 = User.create( username: "Jack Harlow" , password: 123 , nickname: Faker::Hipster.word)
u7 = User.create( username: "The Weekend" , password: 123 , nickname: Faker::Hipster.word)
u8 = User.create( username: "Florence + The Machine" , password: 123 , nickname: Faker::Hipster.word)
u9 = User.create( username: "Red Hot Chili Peppers" , password: 123 , nickname: Faker::Hipster.word )
u10 = User.create( username: "Tame Impala" , password: 123 , nickname: Faker::Hipster.words)
u11 = User.create( username: "Arctic Monkeys" , password: 123 , nickname: Faker::Hipster.word)
u12 = User.create( username: "Mumford & Sons" , password: 123 , nickname: Faker::Hipster.word)
u13 = User.create( username: "Of Monsters and Men" , password: 123 , nickname: Faker::Hipster.word)
u14 = User.create( username: "Betcha" , password: 123 , nickname: Faker::Hipster.word)
u15 = User.create( username: "The Neighborhood" , password: 123 , nickname: Faker::Hipster.word)
u16 = User.create( username: "Sauti Soul" , password: 123 , nickname: Faker::Hipster.word)
u17 = User.create( username: "Post Malone" , password: 123 , nickname: Faker::Hipster.word )
u18 = User.create( username: "Frank Sinatra" , password: 123 , nickname: Faker::Hipster.word)
u19 = User.create( username: "Orlando Bloom" , password: 123 , nickname: Faker::Hipster.word)
u18 = User.create( username: "Chris Brown" , password: 123 , nickname: Faker::Hipster.word)
u19 = User.create( username: "Stevie Wonder" , password: 123 , nickname: Faker::Hipster.word)
u20 = User.create( username: "Fleture" , password: 123 , nickname: Faker::Hipster.word)
u21 = User.create( username: "Anne Marie" , password: 123 , nickname: Faker::Hipster.word)
u22 = User.create( username: "Novo Amor" , password: 123 , nickname: Faker::Hipster.word)
u23 = User.create( username: "Boutross" , password: 123 , nickname: Faker::Hipster.word) 
u24 = User.create( username: "Allesia Cara" , password: 123 , nickname: Faker::Hipster.word)
u25 = User.create( username: "Camilla Cabello" , password: 123 , nickname: Faker::Hipster.word)
u26 = User.create( username: "Cardi B" , password: 123, nickname: Faker::Hipster.word)
u27 = User.create( username: "Nicki Minaj" , password: 123 , nickname: Faker::Hipster.word)
u28 = User.create( username: "Migos" , password: 123 , nickname: Faker::Hipster.word)
u29 = User.create( username: "BTS" , password: 123, nickname: Faker::Hipster.word )
u30 = User.create( username: "Blackpink" , password: 123 , nickname: Faker::Hipster.word)
u31 = User.create( username: "Beyonce" , password: 123 , nickname: Faker::Hipster.word)
u32 = User.create( username: "Khaligraph Jones" , password: 123, nickname: Faker::Hipster.word )



# run a loop 50 times
50.times do
Venue.create(
    venue_name: Faker::Address.city,
    address: Faker::Address.full_address,
    phone: Faker::PhoneNumber.phone_number_with_country_code,
    capacity: 200
)

end

50.times {
    Event.create(
        venue_id: Venue.all.sample.id,
        user_id: User.all.sample.id,
        date: Faker::Date.forward(days: 60),
        event_type: "Concert",
        attendees: rand(0..100),
        price: rand(25..150)
    )
}

puts "✅ Done seeding!"
