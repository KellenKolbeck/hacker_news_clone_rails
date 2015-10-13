class LinksController < ApplicationController
  def index
    @links = Link.all
  end
  def new
    @link = Link.new
  end
  def create
    @link = Link.new(link_params)
    if @link.save
      redirect_to links_path
    else
      error_message = ''
      @link.errors.full_messages.each do |message|
        error_message += " - " + message
      end
      flash[:alert] = error_message
      redirect_to new_link_path
    end
  end
  def edit
    @link = Link.find(params[:id])
  end
  def update
    @link = Link.find(params[:id])
    if @link.update(link_params)
      redirect_to links_path
    else
      error_message = ''
      @link.errors.full_messages.each do |message|
        error_message += " - " + message
      end
      flash[:alert] = error_message
      redirect_to edit_link_path(@link)
    end
  end
  def show
    @link = Link.find(params[:id])
  end
  def destroy
    @link = Link.find(params[:id])
    @link.destroy
    redirect_to links_path
  end


  private
  def link_params
    params.require(:link).permit(:title, :posted_by, :link)
  end
end
