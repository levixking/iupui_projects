# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Location.create!(name: "ET Building", description: "The Engineering and Technology Building.", latitude: 39.773987, longitude: -86.172618 )

Location.create!(name: "Campus Center", description: "The big building with the coffee.", latitude: 39.773965, longitude: -86.17621 )

Location.create!(name: "SL Building", description: "The Science Building", latitude: 39.773962, longitude: -86.170748 )

Event.create!(name: "Women in Technology Camp", start_date: DateTime.new(2014, 06, 01), end_date: DateTime.new(2014, 06, 06))

Event.create!(name: "Biotechnology Conference", start_date: DateTime.new(2014, 07, 01), end_date: DateTime.new(2014, 07,04))

Event.create!(name: "Career Fair", start_date: DateTime.new(2014, 07, 01), end_date: DateTime.new(2014, 07,04))

Sponsor.create!(name: "Oracle", url: "http://www.oracle.com", logo: "Oracle_logo.png")

Sponsor.create!(name: "Microsoft", url: "http://www.microsoft.com", logo: "Microsoft_logo.png")

Sponsor.create!(name: "Intel", url: "http://www.intel.com", logo: "Intel_logo.png")

Sponsor.create!(name: "AMD", url: "http://www.amd.com", logo: "Amd_logo.png")
