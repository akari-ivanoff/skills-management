class CreateSites < ActiveRecord::Migration[5.2]
  def change
    create_table :sites do |t|
      t.string :country
      t.string :city

      t.timestamps
    end
  end
end
