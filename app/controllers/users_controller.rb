class UsersController < ApplicationController
  
  before_action :find_user
  before_action :correct_user?
  
  
  
  def show
    @user = User.find(params[:id])
  end
  
  private
  
    def find_user
       @user = User.find(params[:id])
    end
    
    def correct_user?
      redirect_to root_path if (@user != current_user)
    end
  
end
