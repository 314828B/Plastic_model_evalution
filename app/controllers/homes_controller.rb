class HomesController < ApplicationController

  def top
    #binding.pry
     @items = Item.all.order(id: "DESC").limit(4)
  end

end
