class AccountsController < ApplicationController
def create
  @registration = AccountRegistration.new params[:account]
  if @registration.save
    redirect_to @registration.account
  else
    render :template => "new"
  end
end
end
