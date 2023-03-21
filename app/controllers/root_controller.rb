class RootController < ApplicationController
  def root
    @items = Item.all
  end
end