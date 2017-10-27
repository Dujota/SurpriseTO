class PicturesController < ApplicationController
  before_action :find_picture, only:[:show, :edit, :destroy]
  before_action :new_picture, only:[:create, :new]

  def index
    @pictures = Picture.all
  end

  def show
    # find_picture
  end

  def edit
    # find_picture
  end

  def new
    # new_picture
  end

  def create
    # new_picture
    @picture = Picture.new(picutre_params)
    if @picture.save
      flash[:notice] = "Your picture has been added"
      redirect_to root_path
    else
      flash[:alert] = "Sorry, somehting went wrong :("
      render :new
    end
  end

  def destroy
    # find_picture
  end

  def new_picture
    @picture = Picture.new
  end

  def find_picture
    @picture = Picture.find(params[:id])
  end

  private

  def picutre_params
    params.require(:picutre).permit(:title, :artist, :url)
  end

end
