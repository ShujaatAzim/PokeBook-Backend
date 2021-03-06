class CardsController < ApplicationController

  skip_before_action :authorized, only: [:all_cards, :collection]

  def all_cards
    @cards = Card.all
    render json: @cards.to_json
  end

  def collection
    @cards = Card.where(user_id: params[:id])
    render json: CardSerializer.new(@cards).to_serialized_json
  end

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
    @card = Card.find(params[:id])
    @card.update(quantity: params[:quantity], notes: params[:notes])
    @card.save
    render json: CardSerializer.new(@card).to_serialized_json
  end

  def destroy
    @card = Card.find(params[:id])
    @card.destroy
  end

  private

  def card_params
    params.require(:card).permit(:user_id, :name, :set, :card_number, :card_type, :image, :rarity, :quantity, :notes)
  end
  
end
