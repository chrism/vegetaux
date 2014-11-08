class CreateFamilles < ActiveRecord::Migration
  def change
    create_table :familles do |t|
      t.string :nom

      t.timestamps
    end
  end
end
