class PatronsController < ApplicationController

  def show
    @patron = Patron.find(params[:id])
  end

  def edit
     @patron = Patron.find(params[:id])
  end

  def update
    @patron = Patron.find(params[:id])
    if params[:patron][:business_role] == "1" 
    
    end
      @patron.save
  end
end
