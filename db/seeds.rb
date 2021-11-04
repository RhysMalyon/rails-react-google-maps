places = [
  {
    name: 'The White House',
    address: '1600 Pennsylvania Avenue NW, Washington, DC 20500, United States'
  },
  {
    name: 'Washington Monument',
    address: '2 15th St NW, Washington, DC 20024, United States'
  },
  {
    name: 'Lincoln Memorial',
    address: '2 Lincoln Memorial Cir NW, Washington, DC 20002, United States'
  },
  {
    name: 'Washington National Cathedral',
    address: '3101 Wisconsin Ave NW, Washington, DC 20016, United States'
  },
  {
    name: 'Ronald Reagan Washington National Airport',
    address: '2401 Smith Blvd, Arlington, VA 22202, United States'
  }
]

puts 'Clearing seeds...'

Place.destroy_all

puts 'Seeds cleared.'

puts 'Seeding the database'

places.each do |place|
  Place.create!(
    name: place[:name],
    address: place[:address]
  )
end

puts "Created #{Place.all.count} places."
