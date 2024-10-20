class UsersController < ApplicationController
  def index
    users = User.all

    render json: users.map { |user| 
      {
        id: user.id,
        name: user.name,
        email: user.email,
        coins: user.coins
      }
    }
  end
end