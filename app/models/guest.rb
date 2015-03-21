class Guest < ActiveRecord::Base
  validates :name, presence: true 
  validates :confirm, presence: true
  
end
