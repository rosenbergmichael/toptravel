List.destroy_all

puts "seeding database..."
List.create(title: 'Summer Vacation', notes: 'One family trip, one couples trip')
List.create(title: 'Fall Vacation', notes: 'Long weekend at a Mexico all-inclusive resort')
List.create(title: 'Winter Vacation', notes: 'Week vacation to Europe')
puts "done."