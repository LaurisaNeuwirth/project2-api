class Comment < ActiveRecord::Base
  belongs_to :topic
  belongs_to :user #to do: change name to 'author' as this user is the author of the comment

end
