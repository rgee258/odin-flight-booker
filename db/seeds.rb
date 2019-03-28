# Airport creation
first = Airport.create!(code: "NYC")
second = Airport.create!(code: "SFO")
third = Airport.create!(code: "NJY")
fourth = Airport.create!(code: "FLR")
fifth = Airport.create!(code: "TXS")

# Flight creation
Flight.create!(to_id: first.id, from_id: second.id, duration: 60, date: DateTime.new(2020, 9, 28, 9, 30, 0))
Flight.create!(to_id: second.id, from_id: third.id, duration: 120, date: DateTime.new(2020, 1, 7, 20, 15, 0))
Flight.create!(to_id: third.id, from_id: fourth.id, duration: 630, date: DateTime.new(2020, 12, 26, 15, 0, 0))
Flight.create!(to_id: fourth.id, from_id: fifth.id, duration: 300, date: DateTime.new(2020, 6, 1, 2, 45, 0))
Flight.create!(to_id: fifth.id, from_id: first.id, duration: 750, date: DateTime.new(2020, 5, 13, 9, 30, 0))