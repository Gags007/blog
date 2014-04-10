class Contact < ActiveRecord::Base
  attr_accessible :email, :message, :name, :subject, :website

  validates :name,  :presence => true
  validates :email, :presence => true
  validates :message,  :presence => true
  
end
