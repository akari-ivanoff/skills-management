class CreateTeamRoleSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :team_role_skills do |t|
      t.references :team_role, foreign_key: true
      t.references :skill, foreign_key: true

      t.timestamps
    end
  end
end
