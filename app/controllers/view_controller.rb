class ViewController < ApplicationController

def show
#@project = Project.find(params[:id])
@user = User.find(params[:id])
puts "##################"
puts @user.code
puts "##################"



end
end
