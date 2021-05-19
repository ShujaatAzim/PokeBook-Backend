print "Seeding..."

user01 = User.create(username: "Shu", password: "123")

card01 = Card.create(user_id: user01.id, name: "Alakazam", image: "https://images.pokemontcg.io/base1/1_hires.png", owned: false, quantity: 0, notes: "")
card02 = Card.create(user_id: user01.id, name: "Blastoise", image: "https://images.pokemontcg.io/base1/2_hires.png", owned: false, quantity: 0, notes: "")
card03 = Card.create(user_id: user01.id, name: "Chansey", image: "https://images.pokemontcg.io/base1/3_hires.png", owned: false, quantity: 0, notes: "")
card04 = Card.create(user_id: user01.id, name: "Charizard", image: "https://images.pokemontcg.io/base1/4_hires.png", owned: false, quantity: 0, notes: "")
card05 = Card.create(user_id: user01.id, name: "Clefairy", image: "https://images.pokemontcg.io/base1/5_hires.png", owned: false, quantity: 0, notes: "")
card06 = Card.create(user_id: user01.id, name: "Gyarados", image: "https://images.pokemontcg.io/base1/6_hires.png", owned: false, quantity: 0, notes: "")
card07 = Card.create(user_id: user01.id, name: "Hitmonchan", image: "https://images.pokemontcg.io/base1/7_hires.png", owned: false, quantity: 0, notes: "")
card08 = Card.create(user_id: user01.id, name: "Machamp", image: "https://images.pokemontcg.io/base1/8_hires.png", owned: false, quantity: 0, notes: "")
card09 = Card.create(user_id: user01.id, name: "Magneton", image: "https://images.pokemontcg.io/base1/9_hires.png", owned: false, quantity: 0, notes: "")
card10 = Card.create(user_id: user01.id, name: "Mewtwo", image: "https://images.pokemontcg.io/base1/10_hires.png", owned: false, quantity: 0, notes: "")
card11 = Card.create(user_id: user01.id, name: "Nidoking", image: "https://images.pokemontcg.io/base1/11_hires.png", owned: false, quantity: 0, notes: "")
card12 = Card.create(user_id: user01.id, name: "Ninetales", image: "https://images.pokemontcg.io/base1/12_hires.png", owned: false, quantity: 0, notes: "")
card13 = Card.create(user_id: user01.id, name: "Poliwrath", image: "https://images.pokemontcg.io/base1/13_hires.png", owned: false, quantity: 0, notes: "")
card14 = Card.create(user_id: user01.id, name: "Raichu", image: "https://images.pokemontcg.io/base1/14_hires.png", owned: false, quantity: 0, notes: "")
card15 = Card.create(user_id: user01.id, name: "Venusaur", image: "https://images.pokemontcg.io/base1/15_hires.png", owned: false, quantity: 0, notes: "")
card16 = Card.create(user_id: user01.id, name: "Zapdos", image: "https://images.pokemontcg.io/base1/16_hires.png", owned: false, quantity: 0, notes: "")

print "Done!"