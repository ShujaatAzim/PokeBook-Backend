print "Seeding..."

user01 = User.create(username: "Shu", password: "123")

card01 = Card.create(user_id: user01.id, name: "Charizard", image: "https://images.pokemontcg.io/base1/4_hires.png", owned: false, quantity: 0, notes: "My rarest card!")

print "Done!"