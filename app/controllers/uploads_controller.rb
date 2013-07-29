class UploadsController < ApplicationController
  def index

  end
  
  def show
@upload = Upload.find(params[:id])
  end
  
  def new
    @upload = Upload.new
  end
  
  def create
    @upload = Upload.new(params[:upload])
@id=@upload.project
    @upload.save

if @upload.file_file_name.blank?
	@upload.destroy
	redirect_to "/projects/#{@id.first.to_s}"
    
else
      redirect_to @upload
end

    
    

  end
  
  def edit
    @upload = Upload.find(params[:id])
  end
  
  def update
    @upload = Upload.find(params[:id])
    if @upload.update_attributes(params[:upload])
     
      redirect_to @upload
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @upload = Upload.find(params[:id])
    @id=@upload.project
    @upload.destroy

    redirect_to "/projects/#{@id.first.to_s}"
  end
end
