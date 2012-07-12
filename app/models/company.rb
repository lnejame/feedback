class Company < ActiveRecord::Base
  attr_accessible :contact, :email, :industry, :industry_id, :name, 
                  :description, :usercount_id, :currentsystem_id, :syspref, :hostpref, 
                  :system_preference_id, :host_preference_id, :implement, :setbudget, :prefbudget,:budget, :comment
  belongs_to :industry
  belongs_to :usercount
  belongs_to :currentsystem
  belongs_to :system_preference
  belongs_to :host_preference
  belongs_to :implement
  belongs_to :prefbudget
  belongs_to :setbudget
end
