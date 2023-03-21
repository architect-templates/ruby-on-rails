class ItemsController < ApplicationController

  # POST /items or /items.json
  def create
    @item = Item.new(item_params)

    respond_to do |format|
      if @item.save
        format.html { redirect_to :root }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { redirect_to :root }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Only allow a list of trusted parameters through.
    def item_params
      params.require(:item).permit(:name, :rating)
    end
end
