class Account < ActiveRecord::Base
  validates :Fname, presence: true
  validates :Lname, presence: true
  validates :email, presence: true
  validates :password, presence: true
end
