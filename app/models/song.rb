class Song < ActiveRecord::Base
  attr_accessible :length, :title
  has_and_belongs_to_many :albums
end
