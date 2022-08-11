class GalleryController < ApplicationController
  def index
    @food_items = Product.all
  end

  def search
    @food_items = Product.where("name like ?", "%#{params[:search]}%");
  end
end
