class Theater < ApplicationRecord
  has_many :movie_theaters
  has_many :movies, through: :movie_theaters
  #has_many :bookings
  #has_many :users, through: :bookings
  attr_accessor :rows

  def self.show_timings
    {"09:00 AM" => seats, "12:00 PM" => seats, "03:00PM" => seats, "06:00 PM" => seats, "09:00 PM"=> seats}
  end

  def self.seat_layout
    @rows = ("A".."R").to_a
    cols = (1..22).to_a
    cols.fill(false)
    @seats = Array.new(18)
    @seats.fill(cols)
  end

  def self.availability
    show_timings.each do |slot|
      slot = {slot => [seats]}
    end
  end
  
end
