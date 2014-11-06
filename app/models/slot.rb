class Slot < ActiveRecord::Base
has_many :promotions
accepts_nested_attributes_for :promotions, :reject_if => :all_blank, :allow_destroy => true
end
