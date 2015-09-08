class SearchController < ApplicationController
    
    def index
        @articles = Article.where("headline_english ILIKE ? OR article_text_english ILIKE ?", "%#{ params[:search] }%", "%#{ params[:search] }%")
    end

end

