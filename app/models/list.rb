class List < ActiveRecord::Base
  belongs_to :user
  # has_and_belongs_to_many :destinations
  validates_presence_of :title, :notes
end