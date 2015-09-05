class CreateOrganisations < ActiveRecord::Migration
  def change
    create_table :organisations do |t|
      t.text :name
      t.text :year
      t.text :image
      t.text :profile
      t.timestamps
    end
  end
end
