# == Schema Information
#
# Table name: slots
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  opentimes   :string(255)
#  address     :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Slot < ActiveRecord::Base
  has_many :promotions
  accepts_nested_attributes_for :promotions, :reject_if => :all_blank, :allow_destroy => true
  has_many :services
  accepts_nested_attributes_for :services, :reject_if => :all_blank, :allow_destroy => true
  has_many :shows
  accepts_nested_attributes_for :shows, :reject_if => :all_blank, :allow_destroy => true  
end
