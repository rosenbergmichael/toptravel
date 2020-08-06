List.destroy_all
Destination.destroy_all

puts "seeding database..."
# Api::Api.new.get_api
List.create(title: 'Summer Vacation', notes: 'One family trip, one couples trip')
List.create(title: 'Fall Vacation', notes: 'Long weekend at a Mexico all-inclusive resort')
List.create(title: 'Winter Vacation', notes: 'Week vacation to Europe')
List.create(title: 'Spring Break', notes: 'Cancun or Punta Cana')
List.create(title: 'Christmas-New Years', notes: 'Week vacation to Finland')
Destination.create(name: 'Thailand')
Destination.create(name: 'Cancun')
Destination.create(name: 'Greece')
puts "done."