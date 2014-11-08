class AddExigencesClimatiquesToVegetaux < ActiveRecord::Migration
  def change
    add_column :vegetaux, :exigences_climatiques, :string
  end
end
