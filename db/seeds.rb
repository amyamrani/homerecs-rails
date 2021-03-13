# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

group_one = Group.create(name: 'Best Buddies', code: 'code123')
group_two = Group.create(name: 'Cousin Crew', code: 'code456')

user_one = User.create(
  group_id: group_one.id,
  first_name: 'User',
  last_name: 'One',
  email: 'user_one@gmail.com',
  password: 'Password1'
)

user_two = User.create(
  group_id: group_two.id,
  first_name: 'User',
  last_name: 'Two',
  email: 'user_two@gmail.com',
  password: 'Password2'
)

user_three = User.create(
  group_id: group_one.id,
  first_name: 'User',
  last_name: 'Three',
  email: 'user_three@gmail.com',
  password: 'Password3'
)

user_four = User.create(
  group_id: group_two.id,
  first_name: 'User',
  last_name: 'Four',
  email: 'user_four@gmail.com',
  password: 'Password4'
)

Product.create(
  user_id: user_one.id,
  name: 'Samsung Refridgerator',
  url: 'https://www.bestbuy.com/site/samsung-28-cu-ft-large-capacity-3-door-french-door-refrigerator-with-autofill-water-pitcher-fingerprint-resistant-stainless-steel/6417768.p?skuId=6417768',
  comments: 'Has tons of storage!',
  category: 'Kitchen'
)

Product.create(
  user_id: user_one.id,
  name: 'Sonos TV Soundbar',
  url: 'https://www.bestbuy.com/site/sonos-beam-soundbar-with-voice-control-built-in-black/6253409.p?skuId=6253409',
  comments: 'Great sound!',
  category: 'Living Room'
)

Product.create(
  user_id: user_two.id,
  name: 'Sienna High Table & 4 Barstools',
  url: 'https://www.cityfurniture.com/product/9715395/ei-sienna-dark-tone-high-tbl-4-bs-9715395',
  comments: 'We have the dark tone color.',
  category: 'Dining Room'
)

Product.create(
  user_id: user_two.id,
  name: 'Raegan Gray Fabric Right Chaise Sectional',
  url: 'https://www.cityfurniture.com/product/9711891/gy-raegan-gray-fabric-right-chaise-sect',
  comments: 'Such a comfy couch!',
  category: 'Living Room'
)

Product.create(
  user_id: user_three.id,
  name: 'Lacey Gray Uph Platform Bed',
  url: 'https://www.cityfurniture.com/product/9716528/lacey-gray-uph-platform-bed',
  comments: '',
  category: 'Bedroom'
)

Product.create(
    user_id: user_three.id,
    name: 'Sutton Light Tone Dresser',
    url: 'https://www.cityfurniture.com/product/35006/sg-sutton-dark-tone-dresser',
    comments: 'Great quality dresser.',
    category: 'Bedroom'
)