class Flight < ApplicationRecord
  belongs_to :to_airport, :class_name => "Airport", :foreign_key => :from_id, inverse_of: :arriving_flights
  belongs_to :from_airport, :class_name => "Airport", :foreign_key => :to_id, inverse_of: :departing_flights

  validates :to_id, presence: true
  validates :from_id, presence: true
  validates :date, presence: true
  validates :duration, presence: true

end
