class Company < ActiveRecord::Base
  attr_accessible :name, :contact, :email, :industry, :description, :currentsystem, :usercount,
                  :system_preference, :host_preference, :budget, :setbudget, :prefbudget, :comments,
                  :other1, :other2, :implement_id
    
  INDUSTRIES = ['Manufacturing', 'Aerospace', 'Life Sciences', 'Automotive', 'Food and Beverage',
                'Contract Manufacturing', 'Oil/Gas', 'Packaging', 'Services', 'Other']
  CURRENTSYSTEMS = ['Paper Based', 'MS Office', 'Commercial Software', 'Homegrown']
  USERCOUNTS = ['1-25', '26-50', '51-100', '101-200', '201-500', '500+']
  SYSTEM_PREFERENCES = ['Web based', 'Network based', 'Client server based(desktop)']
  HOST_PREFERENCES = ['Hosted by you', 'Hosted by Harrington']
  SETBUDGETS = ['Less than $2,500', '$2,501 to $10,000', '$10,001 to $25,000', 
                '$25,001 to $50,000', '$50,001 to $100,000', '$100,001 +']
  PREFBUDGETS = ['Less than $2,500', '$2,501 to $10,000', '$10,001 to $25,000', 
                  '$25,001 to $50,000', '$50,001 to $100,000', '$100,001 +']
  IMPLEMENTS = ['Right now!', 'Within 3 months', '3 to 6 months', 'More than 6 months']
end
