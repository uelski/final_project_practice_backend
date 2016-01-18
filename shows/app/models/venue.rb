class Venue < ActiveRecord::Base
  has_many :shows
  has_many :bands, :through => :shows
end
