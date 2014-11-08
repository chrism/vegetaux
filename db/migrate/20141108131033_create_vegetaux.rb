class CreateVegetaux < ActiveRecord::Migration
  def change
    create_table :vegetaux do |t|
      t.string :nom_common
      t.references :famille, index: true
      t.string :classe
      t.string :genre
      t.string :espece
      t.string :origine_geographique
      t.string :cycle_biologique
      t.string :racine
      t.string :tige
      t.string :feuillage
      t.string :fleur
      t.string :fruit
      t.string :graine
      t.string :modes_de_multiplication_possibles
      t.string :systemes_de_production_adaptes
      t.string :mise_en_place_de_la_culture
      t.string :calendrier_cultural
      t.string :entretien_de_la_culture
      t.string :exigences_edaphiques_ideales
      t.string :irrigation
      t.string :fertilisation
      t.string :problemes_phytosanitaires_et_protections_adaptees
      t.string :importance_economique
      t.string :utilisation
      t.string :diversification

      t.timestamps
    end
  end
end
