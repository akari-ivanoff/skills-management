class AddTeamManagerToTeams < ActiveRecord::Migration[5.2]
  def change
    add_reference :teams, :team_manager, index: true, foreign_key: { to_table: :users }
    # add_foreign_key :teams, :users, column: :team_manager_id
  end
end
