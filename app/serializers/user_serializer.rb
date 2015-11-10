#
class UserSerializer < ActiveModel::Serializer
  attributes :name, :hive, :email

  has_many :honeys
  # attributes :id, :email, :current_user

  # def current_user
  #   scope == object
  # end
end
