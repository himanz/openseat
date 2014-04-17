# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Restaurant.create!(
	:name => "Taco Bell",
	:address => "100 King Street",
	:style => "Mexican",
	:url => "http://www.qualitylogoproducts.com/blog/wp-content/uploads/2012/10/taco-bell-sign-e1351172297943.jpg",
	:capacity => 100
	)