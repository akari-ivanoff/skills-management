class CreateTeamRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :team_roles do |t|
      t.integer :occupancy
      t.string :name
      t.references :user, foreign_key: true
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end
