class HoneySerializer < ActiveModel::Serializer
  attributes :id, :name, :honey_rating_by_queen

  has_many :topics
  # attributes :id, :email, :current_user

  # def current_user
  #   scope == object
  # end
end
