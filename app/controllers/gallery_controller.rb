class GalleryController < ApplicationController
  def index
    @food_items = Product.all
  end

  def search
  end
end
