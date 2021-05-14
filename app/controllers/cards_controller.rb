class CardsController < ApplicationController

  skip_before_action :authorized

  def index
    @cards = Card.all
    render json: CardSerializer.new(@cards).to_serialized_json
  end

  def show
    @card = Card.find(params[:id])
    render json: CardSerializer.new(@card).to_serialized_json
  end

  def create
  end

  def update
  end

  def destroy
  end

end
