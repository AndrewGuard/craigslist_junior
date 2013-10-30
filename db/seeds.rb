lawnmower1 = Lawnmower.create(price: 1700, make: "Good Brand", model: "Good Model", owner_id: 1)
lawnmower2 = Lawnmower.create(price: 0, make: "Bad Brand", model: "Bad Model", owner_id: 2)

owner1 = Owner.create(name: "Ollie", phone_number: "847-924-7412", email: "ollie@gmail.com")
owner2 = Owner.create(name: "Andrew", phone_number: "Don't call", email: "andrew@gmail.com")


car1 = Car.create(price: 23000, make: "Chevrolet", model: "Corvette", owner_id: 1)
car2 = Car.create(price: 2000, make: "Volks", model: "Beetle", owner_id: 2)