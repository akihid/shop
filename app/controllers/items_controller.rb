# frozen_string_literal: true

class ItemsController < ApplicationController 
  def index 
    @items = Item.all.includes(:item_image, :item_authors) 
  end
end