class CommentsController < ApplicationController
  def index
    render json: Comment.all
  end

  def show
    render json: Comment.find(params[:id])
  end

  def create
    comment = Comment.create(comment_params)
    # movie points to an object if create was successfully, else movie points to false
    if comment.save
      render json: comment, status: :created
    else
      render json: comment.errors, status: :unprocessable_entity
    end
  end

  def update
    comment = Comment.find(params[:id])
    if comment.update_attributes(comment_params)
      render json: comment, status: :updated
    else
      render json: comment.errors, status: :unprocessable_entity
    end
  end

  def destroy
    Comment.find(params[:id]).destroy
    head :ok
  end

private
  def comment_params
    params.require(:comment).permit(
      :user_id,
      :content,
      :topic_id,
      :rating
      )
  end
end
