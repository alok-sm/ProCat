class HomeController < ApplicationController

def create
  @user = User.create( params[:user] )
end

def index
 if user_signed_in?
    redirect_to :controller=>'dashboard', :action => 'index'
 end
end
end
