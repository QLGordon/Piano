require 'faker'

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

100.times do
  artist = Artist.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    birth: Faker::Date.birthday(18, 65),
    bio: Faker::Lorem.paragraph(20),
    photo: Faker::Avatar.image,
  )
end
