class Usercount < ActiveRecord::Base
  attr_accessible :amount
  has_many :companies
end
