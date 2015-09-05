class CreateArticlesPeople < ActiveRecord::Migration
  def change
    create_table :articles_people, :id => false do |t|
      t.integer :article_id
      t.integer :person_id
    end
  end
end
