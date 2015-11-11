#
class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :hive, :email

  has_many :honeys
  # attributes :id, :email, :current_user

  # def current_user
  #   scope == object
  # end
end
