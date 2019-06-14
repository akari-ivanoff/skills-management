class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :name
      t.text :description
      t.string :owner_contact
      t.references :site, foreign_key: true
      t.references :manager, foreign_key: true

      t.timestamps
    end
  end
end
