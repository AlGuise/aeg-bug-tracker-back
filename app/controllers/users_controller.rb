class UsersController < ApplicationController
  include ActionController::Cookies
  skip_before_action :authorize_user, :only => [:index, :show, :create, :update, :destroy]
  
  # GET /users
  def index
    users = User.all

    render json: users
  end

  # GET /users/1
  def show
    user = set_user
    render json: user
  end

  # GET /users/1
  def showme
    user = User.find_by(id: session[:current_user])
    if user
      render json: user
    else
      render json: { error: "Not authorized" }, status: :unauthorized
    end
  end

  # POST /users
  def create_user
    user = User.create!(user_params)
    render json: user
  end

  def create
    user = User.new(user_params)

    if user.save
      render json: @user, status: :created
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    user = User.find(params[:id])
    user.update(update_user_params)
    render json: user, status: :created
  end

  # DELETE /users/1
  def destroy
    user = User.find(params[:id])
    user.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.permit(:user_name, :email, :password, :first_name, :last_name)
    end

    def update_user_params
      params.permit(:user_name)
    end
end