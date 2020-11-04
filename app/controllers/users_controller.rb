class UsersController < ApplicationController
  def add_money
  end

  def show
  end

  def activate_wallet
    wallet = Wallet.create(balance: 800, user: current_user)
    if current_user.wallet = wallet
      flash[:notice] = "Hurray you have successfully activated your wallet. Rs. 800 was added as welcome bonus!" 
      redirect_to user_path
    else
      flash[:alert] = "Error activating your wallet. Please try again later!"
      render 'show'
    end
  end
end
