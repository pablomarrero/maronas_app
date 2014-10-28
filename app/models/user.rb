class User < ActiveRecord::Base
  rolify 
  after_create :set_normal_role
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  private
    def set_normal_role
      self.add_role :normal
    end
end
