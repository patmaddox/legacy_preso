class BoatsController < ApplicationController
  require_authorization :update
  
  def update
    if @boat.update_attributes(params[:boat])
      redirect_to boat_url(@boat)
    else
      render :action => "edit"
    end
  end
  
  def load_model
    @boat ||= Boat.find(params[:id])
  end
end
