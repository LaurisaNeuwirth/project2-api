#
class User < ActiveRecord::Base
  include Authentication
  has_many :honeys

end
