class PeopleController < ApplicationController

  def index
    @people = Person.all 
  end


  def show
    @person = Person.find params[:id]
  end

  def new
    @person = Person.new 
  end

 
  def create
    person = Person.create person_params
    redirect_to person
  end   

  def edit
    @person = Person.find params[:id]
  end 

  def update
     person = Person.find params[:id]
     person.update person_params
     person.organisation_ids = params[:person][:organisation_ids]
     person.save
    redirect_to person
  end

  def destroy
    person = Person.find params[:id]
    person.destroy
    redirect_to person
  end   



  private
  def person_params
    params.require(:person).permit(:name, :birthday, :image, :profile, :person_id, :article_id, :organisation_id, :person_ids, :article_ids, :organisation_ids)
end

end
