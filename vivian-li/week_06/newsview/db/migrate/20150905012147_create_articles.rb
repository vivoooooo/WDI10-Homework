class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
    	t.text :headline_english
    	t.text :headline_other_language
    	t.text :author_english
    	t.text :author_other_language
    	t.text :source_english
    	t.text :source_other_language
    	t.date :date_published
    	t.date :date_accessed 
    	t.text :link
    	t.text :article_text_english
    	t.text :article_other_language
    	t.text :screen_capture
    	t.text :keywords
    	t.text :issues
    	t.text :own_notes
    	t.timestamp
    end
  end
end