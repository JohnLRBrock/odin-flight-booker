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

flights = Flight.create([{ start_airport_id: 1, end_airport_id: 2,
                           date: Date.today, start_time: Time.now, duration_in_seconds: 14400},
                         { start_airport_id: 1, end_airport_id: 3,
                           date: Date.today, start_time: Time.now, duration_in_seconds: 14400},
                         { start_airport_id: 2, end_airport_id: 1,
                           date: Date.today, start_time: Time.now, duration_in_seconds: 14400},
                         { start_airport_id: 2, end_airport_id: 3,
                           date: Date.today, start_time: Time.now, duration_in_seconds: 14400},
                         { start_airport_id: 2, end_airport_id: 4,
                           date: Date.today, start_time: Time.now, duration_in_seconds: 14400},
                         { start_airport_id: 3, end_airport_id: 4,
                           date: Date.today, start_time: Time.now, duration_in_seconds: 14400
                         }])