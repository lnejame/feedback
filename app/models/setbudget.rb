class Setbudget < ActiveRecord::Base
  attr_accessible :name
  has_many :companies
end
