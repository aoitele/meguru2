class MainController < ApplicationController
  def index
  end

  def map

  end

  def show
    @comment = Comment.find(params[:id])
  end

end
