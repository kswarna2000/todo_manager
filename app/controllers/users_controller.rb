# todos_controller.rb
class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def new
    render "/users/new"
  end

  def index
    render plain: User.all.map { |user| user.to_pleasant_string }.join("\n")
  end

  def create
    first_name = params[:first_name]
    last_name = params[:last_name]
    email = params[:email]
    new_user = User.create!(
      first_name: first_name,
      last_name: last_name,
      email: email,
      password: params[:password],
    )
    redirect_to "/"
  end

  def show
    id = params[:id]
    user = User.find(id)
    render plain: user.to_pleasant_string
  end

  def login
    email = params[:email]
    password = params[:password]
    user_exists = User.where(email: email, password: password).exists?
    render plain: user_exists
  end
end
