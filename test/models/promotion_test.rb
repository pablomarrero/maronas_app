# == Schema Information
#
# Table name: promotions
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  slot_id     :integer
#  description :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

require 'test_helper'

class PromotionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
