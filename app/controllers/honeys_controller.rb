class HoneysController < ApplicationController
  def index
    render json: Honey.all
  end

  def show
    render json: Honey.find(params[:id])
  end

  def create
    honey = Honey.create(honey_params)
    # movie points to an object if create was successfully, else movie points to false
    if honey.save
      render json: honey, status: :created
    else
      render json: honey.errors, status: :unprocessable_entity
    end
  end

  def update
    honey = Honey.find(params[:id])
    if honey.update_attributes(honey_params)
      render json: honey, status: :updated
    else
      render json: honey.errors, status: :unprocessable_entity
    end
  end

  def destroy
    Honey.find(params[:id]).destroy
    head :ok
  end

private
  def honey_params
    params.require(:honey).permit(
      :name,
      :honey_rating_by_queen,
      :user_id
      )
  end
end
