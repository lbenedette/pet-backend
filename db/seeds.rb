# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# People
Person.create(name: 'Johnny Cash', document: '555555555', birth_date: Date.new(1932, 2, 26))
Person.create(name: 'Sid Vicious', document: '555555555', birth_date: Date.new(1957, 5, 10))
Person.create(name: 'Kurt Cobain', document: '555555555', birth_date: Date.new(1967, 2, 20))
Person.create(name: 'Joey Ramone', document: '555555555', birth_date: Date.new(1951, 5, 19))
Person.create(name: 'Axl Rose', document: '555555555', birth_date: Date.new(1962, 2, 6))
Person.create(name: 'Bruce Dickinson', document: '555555555', birth_date: Date.new(1958, 8, 7))
Person.create(name: 'Elvis Presley', document: '555555555', birth_date: Date.new(2008, 8, 17))

# Kinds
Kind.create(description: 'Cavalo')
Kind.create(description: 'Cachorro')
Kind.create(description: 'Papagaio')
Kind.create(description: 'Lhama')
Kind.create(description: 'Iguana')
Kind.create(description: 'Ornitorrinco')
Kind.create(description: 'Gato')
Kind.create(description: 'Andorinha')

# Animals
Animal.create(name: 'Pé de Pano', monthly_cost: 199.99, kind_id: 1, person_id: 1)
Animal.create(name: 'Rex', monthly_cost: 99.99, kind_id: 2, person_id: 2)
Animal.create(name: 'Ajudante do Papai Noel', monthly_cost: 99.99, kind_id: 2, person_id: 3)
Animal.create(name: 'Rex', monthly_cost: 103.99, kind_id: 3, person_id: 4)
Animal.create(name: 'Flora', monthly_cost: 103.99, kind_id: 4, person_id: 5)
Animal.create(name: 'Dino', monthly_cost: 177.99, kind_id: 5, person_id: 6)
Animal.create(name: 'Lassie', monthly_cost: 407.99, kind_id: 6, person_id: 7)