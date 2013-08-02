class ProjectsController < ApplicationController
def new
	@project = Project.new

end

def create
	
	@project = Project.new(params[:project])

	if @project.save
	redirect_to "/"
	end
		
	

	
	@std=@project.department.split(";")
     @std.each { |std_each|
     if User.where(:code => std_each).present?
	 var=1
	 end
	 if var.to_s.include?("1")
	 var=0
	@users = User.where(:code => std_each)

	@users.each do |c|
	c.projects = "#{c.projects};#{@project.id}"
	c.save
     end
	end
}

	@std=@project.guides.split(";")
     @std.each { |std_each|
     if User.where(:code => std_each).present?
     var=1
	 end
	 if var.to_s.include?("1")
	 var=0
	@users = User.where(:code => @std)

	@users.each do |c|
	c.projects_g = "#{c.projects_g};#{@project.id}"
	c.save
	end
	end
}
end


def show

@upload = Upload.new
@project = Project.find(params[:id])
	old = @project.department.split(";")
if(@project.url_attatched.blank? == false)
@project.messages = "#{@project.messages}%n%#{current_user.username}%n% : #{@project.url_attatched}%n%%d%"
@project.url_attatched = ""
@project.save
end
if(@project.comment_tmp.blank? == false)
@project.comments = "#{@project.comments}%n%#{current_user.username}%n% : #{@project.comment_tmp}%n%%d%"
@project.comment_tmp = ""
@project.save  
 end

@all=@project.department.to_s.split(";")

	
   end

def index
  @search = Project.search(params[:q])
  @project = @search.result
@no=@project.size
@no1=0
if(@no>10)
@no1=10
end
@project = @project.page(params[:page]).per(@no1)
  @search.build_condition if @search.conditions.empty?
  @search.build_sort if @search.sorts.empty?
   end

def edit

@c=false
@d=false
  @project = Project.find(params[:id])
 @all=@project.department.to_s.split(";")
if (defined?current_user.code).nil?
@d=true
else
@all.each { |all_each|
if current_user.code == all_each
@c=true
end}
end
end

def update
  @project = Project.find(params[:id])
  old=@project.department.to_s.split(";")
  oldg=@project.guides.to_s.split(";")
  if @project.update_attributes(params[:project]) 
 redirect_to "/"
end


new=@project.department.to_s.split(";")
newg=@project.guides.to_s.split(";")

new.each { |new_each| 
	if (old.include?(new_each))
	else
		puts "im in new guide"
     if User.where(:code => new_each).present?
    
		@users = User.where(:code => new_each)
		c=@users.first
puts c.projects
		c.projects = "#{c.projects};#{@project.id}"
		
		c.save
puts c.projects
		@users.first.save
	end
end
}
old.each { |old_each|
	if (new.include?(old_each))
	else
		puts "im in delete guide"
     if User.where(:code => old_each).present?
     
		@users = User.where(:code => old_each)
		c=@users.first
		puts c.projects
		c.projects.gsub!(";#{@project.id}","")
		puts c.projects
		x=c.projects
		c.reload
		c.update_attributes(:projects => x)
		puts c.projects
		c.save
puts c.projects
		@users.first.save
	end
end
}
newg.each { |new_each| 
		if (oldg.include?(new_each))
	else
		puts "im in new guide"
     if User.where(:code => new_each).present?
		@users = User.where(:code => new_each)
		c=@users.first
puts c.projects
		c.projects_g = "#{c.projects_g};#{@project.id}"
		puts c.projects_g
		c.save
puts c.projects
		@users.first.save
	end
end
}
oldg.each { |old_each|
	if (newg.include?(old_each))
	else
		puts "im in delete guide"
     if User.where(:code => old_each).present?
		@users = User.where(:code => old_each)
		c=@users.first
		puts c.projects_g
		c.projects_g.gsub!(";#{@project.id}","")
		puts c.projects
		x=c.projects_g
		c.reload
		c.update_attributes(:projects_g => x)
		puts c.projects_g
		@users.first.save
	end
end
}
 end
end


