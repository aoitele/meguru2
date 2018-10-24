class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.create params.require(:comment).permit(:content, :image) # POINT
    redirect_to @comment
    # redirect_to :contoroller => 'MainController' :action=> 'map'
  end

  def show
    @comment = Comment.find(params[:id])


    @image_data = MiniMagick::Image.open('app/assets/images/test.jpg')
    # @properties = @image_data.details.fetch("Properties", :not_found)
    @properties = @image_data.details.fetch("Properties", :not_found)
  end

  def edit
    @comment = Comment.find(params[:id])
    @image = ActiveStorage::Blob.find(params[:id])
    @image.purge
    redirect_to @comment

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
