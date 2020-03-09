# todos_controller.rb
class TodosController < ApplicationController
  def index
    render plain: "Hello, this is /todos and the time is #{DateTime.now.to_s(:short)}!"
  end
end
