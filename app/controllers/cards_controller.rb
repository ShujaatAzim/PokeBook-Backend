class CardsController < ApplicationController

  # skip_before_action :authorized

  def index
    @cards = Card.where(user_id: current_user.id)
    render json: CardSerializer.new(@cards).to_serialized_json
  end

  def show
    @card = Card.find(params[:id])
    render json: CardSerializer.new(@card).to_serialized_json
  end

  def create
    @card = Card.create(card_params)
    render json: CardSerializer.new(@card).to_serialized_json
  end

  def update
  end

  def destroy
  end

  private

  def card_params
    params.require(:card).permit(:user_id, :name, :image, :owned, :quantity, :notes)
  end
  
end
