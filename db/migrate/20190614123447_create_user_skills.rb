class CreateUserSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :user_skills do |t|
      t.integer :self_assessment
      t.integer :manager_assessment
      t.text :self_comment
      t.text :manager_comment
      t.text :experience
      t.references :user, foreign_key: true
      t.references :skill, foreign_key: true

      t.timestamps
    end
  end
end
