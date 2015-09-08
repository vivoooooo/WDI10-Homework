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
    organisation = Organisation.create organisation_params
    redirect_to organisation
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
    params.require(:organisation).permit(:name, :year, :image, :profile, :person_id, :article_id, :organisation_id, :person_ids, :article_ids, :organisation_ids)
end

end
