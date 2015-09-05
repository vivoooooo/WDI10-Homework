class CreateArticlesOrganisations < ActiveRecord::Migration
  def change
    create_table :articles_organisations, :id => false do |t|
      t.integer :article_id
      t.integer :organisation_id
    end
  end
end
