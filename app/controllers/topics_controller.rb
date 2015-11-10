class TopicsController < ApplicationController
  def index
    render json: Topic.all
  end

  def show
    render json: Topic.find(params[:id])
  end

  def create
    topic = Topic.create(topic_params)
    # movie points to an object if create was successfully, else movie points to false
    if topic.save
      render json: topic, status: :created
    else
      render json: topic.errors, status: :unprocessable_entity
    end
  end

  def update
    topic = Topic.find(params[:id])
    if topic.update_attributes(topic_params)
      render json: topic, status: :updated
    else
      render json: topic.errors, status: :unprocessable_entity
    end
  end

  def destroy
    Topic.find(params[:id]).destroy
    head :ok
  end

private
  def topic_params
    params.require(:topic).permit(
      :title,
      :description,
      :honey_id
      )
  end
end
