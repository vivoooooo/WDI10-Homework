class AuthorsController < ApplicationController
  def index
  	@authors = Author.all # uses activerecord to get all the authors 
  end

  def show
    @author = Author.find params[:id]
   
  end

  def edit 
    @author = Author.find params[:id]
    render :edit
  end

  def update
    author = Author.find params[:id] 
     author.update author_params
     redirect_to author 
  end

  def new
    @author = Author.new
  end

  def create
    author = Author.create author_params 
    redirect_to author # or author_path(author.id) 
  end

  def destroy
    author = Author.find params[:id] 
    author.destroy 
    redirect_to author 
  end

  def author_params
    params.require(:author).permit(:name, :nationality, :dob, :image) 
  end
end
