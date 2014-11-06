# == Schema Information
#
# Table name: services
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  slot_id     :integer
#  description :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Service < ActiveRecord::Base
  belongs_to :slot
end
