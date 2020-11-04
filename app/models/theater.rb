class Theater < ApplicationRecord
  has_many :movie_theaters
  has_many :movies, through: :movie_theaters
  has_many :bookings
  has_many :users, through: :bookings
  attr_accessor :rows

  def timings
    ["09:00 AM", "12:00 PM", "03:00PM", "06:00 PM", "09:00 PM"]
  end

  def seat_layout
    @rows = ("A".."R").to_a
    cols = (1..22).to_a
    cols.fill(false)
    seats = Array.new(18)
    seats.fill(cols)
  end

  def show_timings
    {"09:00 AM" => seat_layout, "12:00 PM" => seat_layout, "03:00PM" => seat_layout, "06:00 PM" => seat_layout, "09:00 PM"=> seat_layout}
  end

  def availability
    show_timings.each do |slot|
      slot = {slot => [seat_layout]}
    end
  end

  
  
end
