class UsersController < ApplicationController

  skip_before_action :authorized, only: [:index, :show, :create, :user_cards]

  def index
    @users = User.all
    render json: UserSerializer.new(@users).to_serialized_json
  end

  def show
    @user = User.find(params[:id])
    render json: UserSerializer.new(@user).to_serialized_json
  end

  def user_cards
    @user = User.find(params[:id])
    render json: CardSerializer.new(@user.cards).to_serialized_json
  end
  
  def create
    @user = User.create(user_params)
    DeckPrepopulation.call(@user)
    if @user.valid?
      @token = encode_token({ user_id: @user.id })
      render json: { id: @user.id, username: @user.username, cards: @user.cards, jwt: @token, logged: true }, status: :created
    else
      render json: { error: "Invalid user creation credentials" }, status: :not_acceptable
    end
  end

  def profile
    render json: { user: current_user, cards: current_user.cards }, status: :accepted
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end

  private

  def user_params
    params.require(:user).permit(:username, :password) #will add :password_confirmation later
  end

end
