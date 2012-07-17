# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

[
  ['Washington', 6288],
  ['Adams', 5774],
  ['Jefferson', 5712],
  ['Monroe', 5384],
  ['Madison', 5367],
  ['Lafayette', 5260],
  ['Lincoln', 5089],
  ['South Twin', 4902],
  ['Carter Dome', 4832],
  ['Moosilauke', 4802],
  ['Eisenhower', 4780],
  ['North Twin', 4761],
  ['Carrigain', 4700],
  ['Bond', 4698],
  ['Middle Carter', 4610],
  ['West Bond', 4540],
  ['Garfield', 4500],
  ['Liberty', 4459],
  ['South Carter', 4430],
  ['Wildcat', 4422],
  ['Hancock', 4420],
  ['South Kinsman', 4358],
  ['Field', 4340],
  ['Osceola', 4340],
  ['Flume', 4328],
  ['South Hancock', 4319],
  ['Pierce', 4310],
  ['North Kinsman', 4293],
  ['Willey', 4285],
  ['Bondcliff', 4265],
  ['Zealand', 4260],
  ['North Tripyramid', 4180],
  ['Cabot', 4170],
  ['East Osceola', 4156],
  ['Middle Tripyramid', 4140],
  ['Cannon', 4100],
  ['Hale', 4054],
  ['Jackson', 4052],
  ['Tom', 4051, 'Mt. Tom'],
  ['Wildcat, D Peak', 4050],
  ['Moriah', 4049],
  ['Passaconaway', 4043],
  ["Owl's Head", 4025],
  ['Galehead', 4024],
  ['Whiteface', 4020],
  ['Waumbek', 4006],
  ['Isolation', 4004],
  ['Tecumseh', 4003]
].each do |name, elev, fullname|
  Mountain.create( name: name, elevation: elev, is_nh4k: true) unless Mountain.where(name: name).present?
end

mtn = Mountain.where name: 'Tom'
mtn.update_attributes 