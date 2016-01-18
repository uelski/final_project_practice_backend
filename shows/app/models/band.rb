class Band < ActiveRecord::Base
  has_secure_password
  has_many :shows
  has_many :venues, :through => :shows
end
