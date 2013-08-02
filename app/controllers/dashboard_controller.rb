class DashboardController < ApplicationController

before_filter :authenticate_user!

def index
  if current_user.istate.to_s.include?("2")
        current_user.istate = 3
	puts "adonfdjkfndkjfnldfnadnflkadnflkdnflkndaflndlkfnslkfdnslknfklnsfd"
	if Shadow.where(:code => current_user.code).present?
	@shadow=Shadow.where(:code => current_user.code).first
	current_user.projects=@shadow.p_list
	current_user.projects_g=@shadow.g_list
	@shadow.destroy
	current_user.save
	end
		 
  end

end
end
