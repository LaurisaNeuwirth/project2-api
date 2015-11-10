#
class User < ActiveRecord::Base
  include Authentication
  has_many :honeys
  has_many :comments

end
