class FoodAccountsController < ApplicationController

  def index
    food_accounts = current_user.food_accounts
    render :json => food_accounts
  end

end