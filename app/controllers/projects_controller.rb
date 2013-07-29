class ProjectsController < ApplicationController
def new
	@project = Project.new

end

def create
	
	@project = Project.new(params[:project])

	@project.save

		
	

	
	std=@project.department.split(";")
	@users = User.where(:code => std)

	@users.each do |c|
	c.projects = "#{c.projects};#{@project.id}"
	c.save

	end

	std=@project.guides.split(";")
	@users = User.where(:code => std)

	@users.each do |c|
	c.projects = "#{c.projects};#{@project.id}"
	c.save

	redirect_to "/"

	
	end
	


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
   @all=@project.department.to_s.split(";")
   end

def index
  @search = Project.search(params[:q])
  @project = @search.result
  @search.build_condition if @search.conditions.empty?
  @search.build_sort if @search.sorts.empty?
   end

def edit
@c=false
  @project = Project.find(params[:id])
 @all=@project.department.to_s.split(";")
@all.each { |all_each|
if current_user.code == all_each
@c=true
end}
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

puts "%%%%%%%%%%%%%"
puts "new"
print new
puts ""
puts "old"
print old
puts ""
puts "newg"
print newg
puts ""
puts "oldg"
print oldg
puts ""
puts "%%%%%%%%%%%%"








new.each { |new_each| 
	if (old.include?(new_each))
	else
		puts "im in new guide"
		@users = User.where(:code => new_each)
		c=@users.first
puts c.projects
		c.projects = "#{c.projects};#{@project.id}"
		
		c.save
puts c.projects
		@users.first.save
	end}







old.each { |old_each|
	if (new.include?(old_each))
	else
		puts "im in delete guide"
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
	end}








newg.each { |new_each| 
		if (oldg.include?(new_each))
	else
		puts "im in new guide"
		@users = User.where(:code => new_each)
		c=@users.first
puts c.projects
		c.projects = "#{c.projects};#{@project.id}"
		puts c.projects
		c.save
puts c.projects
		@users.first.save
	end}







oldg.each { |old_each|
	if (newg.include?(old_each))
	else
		puts "im in delete guide"
		@users = User.where(:code => old_each)
		c=@users.first
		puts c.projects
		c.projects.gsub!(";#{@project.id}","")
		puts c.projects
		x=c.projects
		c.reload
		c.update_attributes(:projects => x)
		puts c.projects
		@users.first.save
	end}

end
end


