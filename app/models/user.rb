class User < ActiveRecord::Base
  has_many :member_ships
  has_many :groups, through: :member_ships
end
