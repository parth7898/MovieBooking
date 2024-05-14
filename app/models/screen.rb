class Screen < ApplicationRecord
  has_many :movie_shows
  has_many :seats
end
