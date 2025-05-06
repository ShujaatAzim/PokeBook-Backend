class HomeController < ApplicationController
  skip_before_action :authorized #only for dev purposes

  def index
    render json: {
      name: "pb-backend",
      version: "1.0",
      status: "running",
      message: "Welcome to the API for PokeBook. /users is available for view."
    }
  end

end