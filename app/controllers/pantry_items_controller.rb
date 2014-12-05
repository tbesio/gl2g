class PantryItemsController < ApplicationController
  def index
    @pantry_items = PantryItem.where({ :user_id => current_user.id })
  end

  def show
    @pantry_item = PantryItem.find(params[:id])
  end

  def new
    @pantry_item = PantryItem.new
  end

  def create
    @pantry_item = PantryItem.new
    @pantry_item.user_id = params[:user_id]
    @pantry_item.item_id = params[:item_id]
    @pantry_item.expiration_date = params[:expiration_date]
    @pantry_item.purchase_date = params[:purchase_date]
    @pantry_item.consumption_speed = params[:consumption_speed]
    @pantry_item.recurring = params[:recurring]

    if @pantry_item.save
      redirect_to "/pantry_items", :notice => "Pantry item created successfully."
    else
      render 'new'
    end
  end

  def edit
    @pantry_item = PantryItem.find(params[:id])
  end

  def update
    @pantry_item = PantryItem.find(params[:id])

    @pantry_item.user_id = params[:user_id]
    @pantry_item.item_id = params[:item_id]
    @pantry_item.expiration_date = params[:expiration_date]
    @pantry_item.purchase_date = params[:purchase_date]
    @pantry_item.consumption_speed = params[:consumption_speed]
    @pantry_item.recurring = params[:recurring]

    if @pantry_item.save
      redirect_to "/pantry_items", :notice => "Pantry item updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @pantry_item = PantryItem.find(params[:id])

    @pantry_item.destroy

    redirect_to "/pantry_items", :notice => "Pantry item deleted."
  end
end
