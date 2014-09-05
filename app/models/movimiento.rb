class Movimiento < ActiveRecord::Base
  belongs_to :subrubro
  belongs_to :tipogasto
  belongs_to :tipomov
  belongs_to :formapago
  belongs_to :user
end
