class CreateUserTeamRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :user_team_roles do |t|
      t.references :team_role, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
