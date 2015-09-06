class OrganisationsController < ApplicationController


  def index
    @organisations = Organisation.all
  end
  
  def show
    @organisation = Organisation.find params[:id]  
  end


  def new
    @organisation = Organisation.create
  end

  def create
    organisation = Organisation.create organisation_params
    redirect_to organisation
  end

 

  def edit
    organisation = Organisation.find params[:id]  
  end

   def update
    organisation = Organisation.find params[:id]
    organisation.update organisation_params
    redirect_to organisation
   end

   def destroy
      organisation = Organisation.find params[:id]
    organisation.destroy
    redirect_to organisation

   end

   private
  def organisation_params
    params.require(:organisation).permit(:name, :year, :image, :profile, :person_id, :article_id, :organisation_id)
end

end
