# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
airports = Airport.create([{ code: 'SFO' }, { code: 'JFK' }, 
                           { code: 'TPA' }, { code: 'ATL '}
                          ])

1000.times do
  flight = Flight.new()
  flight.start_airport_id    = rand(1..4)
  flight.end_airport_id      = rand(1..4)
  flight.date                = Date.today + 20.years + rand(-7..7).days
  flight.start_time          = Time.now + rand(-3600..3600).seconds
  flight.duration_in_seconds = 14400 + rand(-3600..3600)
  flight.save
end