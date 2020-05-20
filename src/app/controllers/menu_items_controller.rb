class MenuItemsController < ApplicationController

    def create
        @menu_item = MenuItem.new(menu_item_params)
        @menu_item.marketplace_id = current_patron.marketplace.id
        @menu_item.save
        redirect_to root_path        
    end


    def menu_item_params
        params.require(:menu_item).permit(:name, :price)

    end
end
