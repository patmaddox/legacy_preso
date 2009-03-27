class AccountsController < ApplicationController
def create
  @account = Account.new params[:account]
  if @account.save
    redirect_to @account
  else
    render :template => "new"
  end
end
end
