class Slot < ActiveRecord::Base
has_many :promotions
accepts_nested_attributes_for :promotions, :reject_if => :all_blank, :allow_destroy => true
has_many :services
accepts_nested_attributes_for :services, :reject_if => :all_blank, :allow_destroy => true
end
