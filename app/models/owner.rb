class Owner < ActiveRecord::Base
  has_many :cars
  has_many :lawnmowers
end
