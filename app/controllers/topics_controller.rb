class TopicsController < ApplicationController
  respond_to :json
  def index
    respond_with Topic.all
  end

  def show
    respond_with Topic.find(params[:id])
  end

  def create
    respond_with Topic.create
  end
end
