class UsersController < ApplicationController
    before_action :authenticate_user! #ensure user is logged in
    
    def index
        @users = User.all #grab all users from db and save in users instance variable
    end
    
    def show
        @user = User.find(params[:id]) #locate user based on their id and save in instance variable.
    end
end