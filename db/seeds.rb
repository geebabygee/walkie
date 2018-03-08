# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "destroying all data"
WalkAttachment.destroy_all
Walk.destroy_all
User.destroy_all
Category.destroy_all
puts "creating"


User.create!({
  first_name: "Joe",
  last_name: "Monteiro",
  email: "joemonteiro@verizon.net",
  password: "123456",
  })

Category.create!({
  name: "Alternative Walks",
  })
Category.create!({
  name: "Green Walks",
  })
Category.create!({
  name: "Historical Walks",
  })
Category.create!({
  name: "Seaside Walks",
  })
Category.create!({
  name: "Family Walks",
  })
Category.create!({
  name: "Cultural Walks",
  })

walk = Walk.create!({
  name: "Marvila Street Art Walk",
  location: "Lisbon",
  address: "Marvila",
  description: "pare ribs ham boudin ham hock, pork loin drumstick ball tip pork capicola buffalo tail ground round short ribs t-bone filet mignon. Tenderloin shank sausage beef bresaola filet mignon pastrami cow. Jowl ground round short ribs capicola jerky. Meatball bresaola tail, meatloaf cupim pork chop pork belly boudin kielbasa pork loin capicola venison chicken leberkas brisket. Drumstick t-bone filet mignon beef ribs kevin pastrami. Short loin venison salami jowl meatball.
  ",
  category: Category.first ,
  duration: 35,
  user: User.all.sample
  })
walk.walk_attachments.create!(photo: "http://res.cloudinary.com/geebabygee/image/upload/v1520446746/street-art-kobra.jpg")
walk.walk_attachments.create!(photo: "http://res.cloudinary.com/geebabygee/image/upload/v1520446738/street-art-licuado.jpg")
walk.walk_attachments.create!(photo: "http://res.cloudinary.com/geebabygee/image/upload/v1520446742/street-art-steep.jpg")

walk2 = Walk.create!({
  name: "Vhils Walk",
  location: "Lisbon",
  address: "Graca",
  description: "pare ribs ham boudin ham hock, pork loin drumstick ball tip pork capicola buffalo tail ground round short ribs t-bone filet mignon. Tenderloin shank sausage beef bresaola filet mignon pastrami cow. Jowl ground round short ribs capicola jerky. Meatball bresaola tail, meatloaf cupim pork chop pork belly boudin kielbasa pork loin capicola venison chicken leberkas brisket. Drumstick t-bone filet mignon beef ribs kevin pastrami. Short loin venison salami jowl meatball.
  ",
  category: Category.first ,
  duration: 25,
  user: User.all.sample
  })
walk2.walk_attachments.create!(photo: "http://res.cloudinary.com/geebabygee/image/upload/v1520501673/vhils-obey-giant-mural-collaboration-lisbon-portugal-1.jpg")
walk2.walk_attachments.create!(photo: "http://res.cloudinary.com/geebabygee/image/upload/v1520501662/vhils-1.jpg")
walk2.walk_attachments.create!(photo: "http://res.cloudinary.com/geebabygee/image/upload/v1520501800/vhills_alcantera-770x429.jpg")

walk3 = Walk.create!({
  name: "Bordallo II and Trash Art Walk",
  location: "Lisbon",
  address: "Lisbon",
  description: "pare ribs ham boudin ham hock, pork loin drumstick ball tip pork capicola buffalo tail ground round short ribs t-bone filet mignon. Tenderloin shank sausage beef bresaola filet mignon pastrami cow. Jowl ground round short ribs capicola jerky. Meatball bresaola tail, meatloaf cupim pork chop pork belly boudin kielbasa pork loin capicola venison chicken leberkas brisket. Drumstick t-bone filet mignon beef ribs kevin pastrami. Short loin venison salami jowl meatball.
  ",
  category: Category.first ,
  duration: 45,
  user: User.all.sample
  })
walk3.walk_attachments.create!(photo: "http://res.cloudinary.com/geebabygee/image/upload/v1520501925/bordalo-1.jpg")
walk3.walk_attachments.create!(photo: "http://res.cloudinary.com/geebabygee/image/upload/v1520501920/bordalo-4.jpg")
walk3.walk_attachments.create!(photo: "http://res.cloudinary.com/geebabygee/image/upload/v1520501923/bordalo-2.jpg")

walk4 = Walk.create!({
  name: "Praça do Comércio",
  location: "Lisbon",
  address: "Praça do Comércio, 1100-148 Lisboa",
  description: "pare ribs ham boudin ham hock, pork loin drumstick ball tip pork capicola buffalo tail ground round short ribs t-bone filet mignon. Tenderloin shank sausage beef bresaola filet mignon pastrami cow. Jowl ground round short ribs capicola jerky. Meatball bresaola tail, meatloaf cupim pork chop pork belly boudin kielbasa pork loin capicola venison chicken leberkas brisket. Drumstick t-bone filet mignon beef ribs kevin pastrami. Short loin venison salami jowl meatball.
  ",
  category: Category.all.sample,
  duration: 15,
  user: User.all.sample
  })
walk4.walk_attachments.create!(photo: "http://res.cloudinary.com/geebabygee/image/upload/v1520335705/hugo-sousa-383214-unsplash.jpg")
walk4.walk_attachments.create!(photo: "http://res.cloudinary.com/geebabygee/image/upload/v1520446738/street-art-licuado.jpg")
walk4.walk_attachments.create!(photo: "http://res.cloudinary.com/geebabygee/image/upload/v1520446742/street-art-steep.jpg")


walk5 = Walk.create!({
  name: "Arco do Castelo",
  location: "Lisbon",
  address: "R. de Santa Cruz do Castelo 10, 1100-078 Lisboa",
  description: "pare ribs ham boudin ham hock, pork loin drumstick ball tip pork capicola buffalo tail ground round short ribs t-bone filet mignon. Tenderloin shank sausage beef bresaola filet mignon pastrami cow. Jowl ground round short ribs capicola jerky. Meatball bresaola tail, meatloaf cupim pork chop pork belly boudin kielbasa pork loin capicola venison chicken leberkas brisket. Drumstick t-bone filet mignon beef ribs kevin pastrami. Short loin venison salami jowl meatball.
  ",
  category: Category.all.sample,
  duration: 22,
  user: User.all.sample
  })
walk5.walk_attachments.create!(photo: "http://res.cloudinary.com/geebabygee/image/upload/v1520335697/z-klein-326375-unsplash.jpg")
walk5.walk_attachments.create!(photo: "http://res.cloudinary.com/geebabygee/image/upload/v1520446738/street-art-licuado.jpg")
walk5.walk_attachments.create!(photo: "http://res.cloudinary.com/geebabygee/image/upload/v1520446742/street-art-steep.jpg")


walk6 = Walk.create!({
  name: "Castelo de São Jorge",
  location: "Lisbon",
  address: "R. do Espírito Santo, 1100-129 Lisboa",
  description: "pare ribs ham boudin ham hock, pork loin drumstick ball tip pork capicola buffalo tail ground round short ribs t-bone filet mignon. Tenderloin shank sausage beef bresaola filet mignon pastrami cow. Jowl ground round short ribs capicola jerky. Meatball bresaola tail, meatloaf cupim pork chop pork belly boudin kielbasa pork loin capicola venison chicken leberkas brisket. Drumstick t-bone filet mignon beef ribs kevin pastrami. Short loin venison salami jowl meatball.
  ",
  category: Category.all.sample,
  duration: 27,
  user: User.all.sample
  })
walk6.walk_attachments.create!(photo: "http://res.cloudinary.com/geebabygee/image/upload/v1520457690/maarten-van-den-heuvel-63257-unsplash.jpg")
walk6.walk_attachments.create!(photo: "http://res.cloudinary.com/geebabygee/image/upload/v1520446738/street-art-licuado.jpg")
walk6.walk_attachments.create!(photo: "http://res.cloudinary.com/geebabygee/image/upload/v1520446742/street-art-steep.jpg")


# Walk.create!({
#   name: "Padrão dos Descobrimentos",
#   location: "Lisbon",
#   address: "Av. Brasília, 1400-038 Lisboa",
#   description: "pare ribs ham boudin ham hock, pork loin drumstick ball tip pork capicola buffalo tail ground round short ribs t-bone filet mignon. Tenderloin shank sausage beef bresaola filet mignon pastrami cow. Jowl ground round short ribs capicola jerky. Meatball bresaola tail, meatloaf cupim pork chop pork belly boudin kielbasa pork loin capicola venison chicken leberkas brisket. Drumstick t-bone filet mignon beef ribs kevin pastrami. Short loin venison salami jowl meatball.
#   ",
#   category: Category.all.sample,
#   duration: 45,
#   user: User.all.sample
#   })

# Walk.create!({
#   name: "Jerónimos Monastery",
#   location: "Lisbon",
#   address: "Praça do Império 1400-206 Lisboa, 1400-206 Lisboa",
#   description: "pare ribs ham boudin ham hock, pork loin drumstick ball tip pork capicola buffalo tail ground round short ribs t-bone filet mignon. Tenderloin shank sausage beef bresaola filet mignon pastrami cow. Jowl ground round short ribs capicola jerky. Meatball bresaola tail, meatloaf cupim pork chop pork belly boudin kielbasa pork loin capicola venison chicken leberkas brisket. Drumstick t-bone filet mignon beef ribs kevin pastrami. Short loin venison salami jowl meatball.
#   ",
#   category: Category.all.sample,
#   duration: 45,
#   user: User.all.sample
#   })

# Walk.create!({
#   name: "Palácio Nacional da Ajuda",
#   location: "Lisbon",
#   address: "Largo Ajuda 1349-021, Lisboa",
#   description: "pare ribs ham boudin ham hock, pork loin drumstick ball tip pork capicola buffalo tail ground round short ribs t-bone filet mignon. Tenderloin shank sausage beef bresaola filet mignon pastrami cow. Jowl ground round short ribs capicola jerky. Meatball bresaola tail, meatloaf cupim pork chop pork belly boudin kielbasa pork loin capicola venison chicken leberkas brisket. Drumstick t-bone filet mignon beef ribs kevin pastrami. Short loin venison salami jowl meatball.
#   ",
#   category: Category.all.sample,
#   duration: 45,
#   user: User.all.sample
#   })

# Walk.create!({
#   name: "Jardim Botânico d'Ajuda",
#   location: "Lisbon",
#   address: "Calçada Ajuda, 1300-011 Lisboa",
#   description: "pare ribs ham boudin ham hock, pork loin drumstick ball tip pork capicola buffalo tail ground round short ribs t-bone filet mignon. Tenderloin shank sausage beef bresaola filet mignon pastrami cow. Jowl ground round short ribs capicola jerky. Meatball bresaola tail, meatloaf cupim pork chop pork belly boudin kielbasa pork loin capicola venison chicken leberkas brisket. Drumstick t-bone filet mignon beef ribs kevin pastrami. Short loin venison salami jowl meatball.
#   ",
#   category: Category.all.sample,
#   duration: 120,
#   user: User.all.sample
#   })

Review.create!({
  content: "Amazing place! You guys rock!!!",
  walk: Walk.first,
  user: User.all.sample
  })

Review.create!({
  content: "What a walk! The best weekend!",
  walk: Walk.first,
  user: User.all.sample
  })



Point.create!({
  name: "Marvila Library",
  latitude: 38.740388,
  longitude: -9.109299,
  description: "Marvila Library is a good starting point of the graffitti walk",
  order: 1,
  walk: Walk.first
  })
Point.create!({
  name: "Rua Alberto Jose Pessoa",
  latitude: 38.741509,
  longitude: -9.108027,
  description: "The street has many graffitti murals",
  order: 2,
  walk: Walk.first
  })
Point.create!({
  name: "Rua Alberto Lapa",
  latitude: 38.605469,
  longitude: -9.164683,
  description: "The second main street full of street art murals",
  order: 3,
  walk: Walk.first
  })
Point.create!({
  name: "Bairro da Quinta do Chale",
  latitude: 38.743362,
  longitude: -9.107827,
  description: "The coolest street murals are hidden away on these streets",
  order: 4,
  walk: Walk.first
  })
Point.create!({
  name: "Rua do Patrocinio",
  latitude: -23.193244,
  longitude: -46.877030,
  description: "More amazing art murals here",
  order: 5,
  walk: Walk.first
  })
Point.create!({
  name: "Dois Corvos",
  latitude: 38.738008,
  longitude: -9.105526,
  description: "Enjoy some cool graffiti whilst trying out some amazing beers in this Craft Beer Brewery",
  order: 6,
  walk: Walk.first
  })
Point.create!({
  name: "Fabrica do Braca de Prata",
  latitude: 38.743791,
  longitude: -9.101242,
  description: "The last stop on the tour, a place full of many cool different spaces, a library, alternative craft shops and lively at night with concerts",
  order: 7,
  walk: Walk.first
  })

p "finished seeding"
