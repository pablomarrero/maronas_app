class Servicio < ActiveRecord::Base
	has_and_belongs_to_many :slot
end