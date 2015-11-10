class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :rating
end
