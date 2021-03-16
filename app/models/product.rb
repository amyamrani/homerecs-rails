class Product < ApplicationRecord
  CATEGORIES = ['Entryway', 'Living Room', 'Dining Room', 'Kitchen', 'Bedroom', 'Play Room', 'Bathroom', 'Laundry Room', 'Outdoor/Patio', 'Garage']

  belongs_to :user
end
