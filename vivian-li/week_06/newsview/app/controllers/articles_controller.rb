class ArticlesController < ApplicationController

 def index
   @articles = Article.all 
 end
 
  def show
    @article = Article.find params[:id]
  end

  def new
    @article = Article.new
  end

  def create
    article = Article.create article_params
    redirect_to article
  end 


  def edit
    @article = Article.find params[:id]
  end

  def update
    article = Article.find params[:id]
    article.update article_params
      article.person_ids = params[:article][:person_ids]
      article.organisation_ids = params[:article][:organisation_ids]
      article.save  
    redirect_to article
  end 

    def destroy
    article = Article.find params[:id]
    article.destroy
    redirect_to articles_path
  end 

 def results
    @articles = Article.where("headline_english ILIKE ? OR article_text_english ILIKE ?", "%#{ params[:query] }%", "%#{ params[:query] }%")
  end
   

  
    private
  def article_params
    params.require(:article).permit(:headline_english, :headline_other_language, :author_english, :image, :author_other_language, :source_english, :source_other_language, :date_published, :date_accessed, :link, :article_text_english, :article_other_language, :screen_capture, :keywords, :issues, :own_notes, :article_id, :person_id, :organisation_id, :person_ids, :article_ids, :organisation_ids ) 
  end


 end

