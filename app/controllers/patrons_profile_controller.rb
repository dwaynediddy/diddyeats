class PatronsProfileController < ApplicationController

  def show
    @patron = patron.find(params[:id])
  end

end
