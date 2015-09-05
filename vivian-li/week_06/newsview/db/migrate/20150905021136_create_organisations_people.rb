class CreateOrganisationsPeople < ActiveRecord::Migration
  def change
    create_table :organisations_people, :id => false do |t|
      t.integer :organisation_id
      t.integer :person_id
    end
  end
end
