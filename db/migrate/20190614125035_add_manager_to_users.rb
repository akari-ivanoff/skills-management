class AddManagerToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :manager, index: true, foreign_key: { to_table: :users }
    # add_foreign_key :users, :users, column: :manager_id
  end
end
