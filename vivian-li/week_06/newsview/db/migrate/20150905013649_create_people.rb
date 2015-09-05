class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.text :name
      t.date :birthday
      t.text :image
      t.text :profile
      t.timestamps
    end
  end
end
