class CommentsController < ApplicationController

  def new
    @comment = Comment.new()
    @parent = Comment.find(params[:comment])
    @link = Link.find(params[:link])
  end

  def create
    if (params[:link_id])
      @parent = Link.find(params[:link_id])
      @link = @parent
    else
      @parent = Comment.find(params[:comment_id])
      @link = Link.find(params[:link])
    end
    @comment = @parent.comments.new(comment_params)
    @comment.save
    if @link
      redirect_to link_path(@link)
    else
      redirect_to links_path
    end
    # if @comment.save
    #   redirect_to link_path(@link)
    # else
    #   error_message = ''
    #   @comment.errors.full_messages.each do |message|
    #     error_message += " - " + message
    #   end
    #   flash[:alert] = error_message
    #   redirect_to link_path(@link)
    # end
  end


  private
  def comment_params
    params.require(:comment).permit(:comment_body, :posted_by)
  end
end
