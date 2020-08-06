class Destination < ActiveRecord::Base
  has_and_belongs_to_many :lists
  has_many :users, through: :lists
end