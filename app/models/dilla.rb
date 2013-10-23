# == Schema Information
#
# Table name: dillas
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  customer_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Dilla < ActiveRecord::Base
  attr_accessible :name, :customer_id
  belongs_to :customer
  has_and_belongs_to_many :ingredients
end
