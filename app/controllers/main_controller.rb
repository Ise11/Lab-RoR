class MainController < ApplicationController
  def index
    @users = User.all
    @last_task = Task.order(created_at: :desc).first
  end
  

end
