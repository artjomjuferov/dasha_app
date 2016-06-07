class Event < ActiveRecord::Base
  belongs_to :place

  has_and_belongs_to_many :workers
  has_and_belongs_to_many :members
  has_and_belongs_to_many :sponsors

  has_many :incomings
  has_many :outcomings
end
