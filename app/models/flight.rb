class Flight < ApplicationRecord
  belongs_to :to_airport, :class_name => "Airport", :foreign_key => :from_id, inverse_of: :arriving_flights
  belongs_to :from_airport, :class_name => "Airport", :foreign_key => :to_id, inverse_of: :departing_flights
  has_many :bookings

  validates :to_id, presence: true
  validates :from_id, presence: true
  validates :date, presence: true
  validates :duration, presence: true

  def date_display_formatted
    date.strftime("%m/%d/%Y")
  end

  def time_display_formatted
    date.strftime("%H:%M")
  end

  def date_value_formatted
    date.strftime("%m-%d-%Y")
  end

end
