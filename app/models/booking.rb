class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :movie_show
  belongs_to :seat
  
  def self.count_last_hour_bookings
    # Get the current time
    current_time = Time.now

    # Calculate the start time for the last 1 hour
    start_time = current_time - 1.hour

    # Calculate the end time (which is the current time)
    end_time = current_time

    # Count the number of bookings made in the last 1 hour
    bookings_count_last_hour = where(created_at: start_time..end_time).count
  end
end
