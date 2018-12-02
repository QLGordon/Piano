require 'faker'

p 'Cleaning Artists'
Artist.destroy_all
Instrument.destroy_all
Event.destroy_all

10.times do
  artist = Artist.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    birth: Faker::Date.birthday(18, 65),
    bio: Faker::Lorem.paragraph(100),
    photo: 'http://lorempicsum.com/futurama/255/200/' + rand(1..10).to_s,
  )
end
