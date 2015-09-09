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
    @person = Person.new person_params

    if params[:file]
      response = Cloudinary::Uploader.upload params[:file]
      @person.image = response["url"]
    elsif params[:person][:image]
      @person.image = params[:person][:image]
    end

    @person.save

    redirect_to @person
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



  def results
    @people = Person.where("name ILIKE ? OR profile ILIKE ?", "%#{ params[:query] }%", "%#{ params[:query] }%")
  end


  private
  def person_params
    params.require(:person).permit(:name, :birthday, :profile)
  end

 end
 





