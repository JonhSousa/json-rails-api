# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Lugar.create(nome:'Fortaleza', latitude:5, longitude:10)
Lugar.create(nome:'Quixadá', latitude:5, longitude:10)
Lugar.create(nome:'Reriutaba', latitude:5, longitude:10)
Lugar.create(nome:'Caucaia', latitude:5, longitude:10)
Lugar.create(nome:'Jeri', latitude:5, longitude:10)
Lugar.create(nome:'Icaraí', latitude:5, longitude:10)
Lugar.create(nome:'Pacheco', latitude:5, longitude:10)
Lugar.create(nome:'Morro Branco', latitude:5, longitude:10)
Lugar.create(nome:'Prainha', latitude:5, longitude:10)

Voto.create(lugar_id:1)
Voto.create(lugar_id:1)
Voto.create(lugar_id:1)
Voto.create(lugar_id:2)
Voto.create(lugar_id:1)
Voto.create(lugar_id:4)
Voto.create(lugar_id:4)
Voto.create(lugar_id:4)
