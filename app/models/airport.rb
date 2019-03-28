class Airport < ApplicationRecord
  has_many :departing_flights, :class_name => "Flight", :foreign_key => :from_id, inverse_of: :from_airport
  has_many :arriving_flights, :class_name => "Flight", :foreign_key => :to_id, inverse_of: :to_airport

  validates :code, presence: true
end
