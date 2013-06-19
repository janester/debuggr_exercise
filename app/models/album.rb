class Album < ActiveRecord::Base
  attr_accessible
  belongs_to :song
end
