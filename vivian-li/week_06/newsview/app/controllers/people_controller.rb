class PeopleController < ApplicationController

  def index
    @people = Person.all 
  end


  def show
    @person = Person.find params[:id]
  end

  def new
    @person = Person.create 

  end

 
  def create
    person = Person.create person_params
    redirect_to person
  end   

  def edit
    person = person.find params [:id]
  end 

  def update
     person = Person.find params[:id]
     person.update person_params
     redirect_to person
  end

  def destroy
    person = Person.find params[:id]
    person.destroy
    redirect_to person
  end   



  private
  def person_params
    params.require(:person).permit(:name, :birthday, :image, :profile, :person_id, :article_id, :organisation_id)
end

end
