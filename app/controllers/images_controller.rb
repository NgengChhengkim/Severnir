class ImagesController < ApplicationController
  def index
    @image = Image.new
    @images = Image.all
  end

  def show
    @image = Image.find(params[:id])
  end

  def create
    if params[:images]
      params[:images].each do |image|
        @image = Image.new(image: image)
        @image.save
      end
    end
    redirect_to root_url
  end

  def save_image
    @image = Image.find(params[:id])
    send_file "#{Rails.root}/public/#{@image.image.url}"
  end

  private
  def params_image
    params.require(:image).permit(:image)
  end


end
