# == Schema Information
#
# Table name: customers
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  username        :string(255)
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Customer < ActiveRecord::Base
  attr_accessible :name, :email, :username, :password, :password_confirmation

  has_secure_password

  has_many :dillas

  validates :name, :username, :email, :password, :password_confirmation, :presence => true
  validates :email, :uniqueness => true
  validates :password, :password_confirmation, :length => { in: 3..20 }

end
