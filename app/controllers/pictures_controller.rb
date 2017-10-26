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

  def mew
    # new_picture
  end

  def create
    # new_picture
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

end
