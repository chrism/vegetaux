class FixNomCommunColumnName < ActiveRecord::Migration
  def change
    rename_column :vegetaux, :nom_common, :nom_commun
  end
end
