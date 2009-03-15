class BoatsController < ApplicationController
  def update
    @boat = Boat.find params[:id]
    if @boat.can_update?(current_user)
      if @boat.update_attributes(params[:boat])
        redirect_to boat_url(@boat)
      else
        render :action => "edit"
      end
    else
      flash[:notice] = "You can not update this boat"
      redirect_to boat_url(@boat)
    end
  end
end
