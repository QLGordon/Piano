# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
p 'Cleaning Artists'
Artist.destroy_all
Instrument.destroy_all
Event.destroy_all

p 'creating Artists'
Artist.create({
  first_name: 'Célimène',
  last_name: 'Daudet',
  birth: '21/12/1990',
  bio: "Célimène est un prénom qui évoque un personnage du Misanthrope de Molière
Daudet...comme Alphonse?
Oui! Car il est bien l'arrière-arrière-grand-oncle de Célimène Daudet.
Avec un nom et un prénom aux lointaines références littéraires,
Célimène a pourtant fait le choix de la musique!",

})
