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

require 'test_helper'

class SlotTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
