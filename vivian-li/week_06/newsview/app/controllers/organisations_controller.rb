class OrganisationsController < ApplicationController


  def index
    @organisations = Organisation.all
  end
  
  def show
    @organisation = Organisation.find params[:id]  
  end


  def new
    @organisation = Organisation.new
  end

  def create
    @organisation = Organisation.new organisation_params

    if params[:file]
    response = Cloudinary::Uploader.upload params[:file]
    @organisation.image = response["url"]
  elsif params[:organisation][:image]
    @organisation.image = params[:organisation][:image]
  end

  @organisation.save
   redirect_to @organisation 
   end 

    

  def edit
    @organisation = Organisation.find params[:id]  
  end

   def update
    organisation = Organisation.find params[:id]
    organisation.update organisation_params
    organisation.person_ids = params[:organisation][:person_ids]
    organisation.save
    redirect_to organisation
   end

   def destroy
      organisation = Organisation.find params[:id]
    organisation.destroy
    redirect_to organisation

   end

   def results
        @organisations = Organisation.where("name ILIKE ? OR profile ILIKE ?", "%#{ params[:query] }%", "%#{ params[:query] }%")
  end
   


   private
  def organisation_params
    params.require(:organisation).permit(:name, :year, :profile)
end

end
