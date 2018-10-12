class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.create params.require(:comment).permit(:content, :image) # POINT
    redirect_to @comment
  end

  def show
    @comment = Comment.find(params[:id])
    @image = @comment.image
    # @image_data = MiniMagick::Image.open(@image)
    # @properties = @image_data.details.fetch("Properties", :not_found)
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update params.require(:comment).permit(:content, :image) # POINT
    redirect_to @comment
  end

  # private
  #   def comment_params
  #     params.require(:comment).permit(:title, :content, image:[])
  #   end


end
