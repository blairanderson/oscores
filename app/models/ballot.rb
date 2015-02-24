class Ballot < ActiveRecord::Base
  belongs_to :event
  has_many :ballot_nominees
end
