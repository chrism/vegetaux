json.array!(@vegetaux) do |vegetable|
  json.extract! vegetable, :id, :nom_common, :famille_id, :classe, :genre, :espece, :origine_geographique, :cycle_biologique, :racine, :tige, :feuillage, :fleur, :fruit, :graine, :modes_de_multiplication_possibles, :systemes_de_production_adaptes, :mise_en_place_de_la_culture, :calendrier_cultural, :entretien_de_la_culture, :exigences_edaphiques_ideales, :irrigation, :fertilisation, :problemes_phytosanitaires_et_protections_adaptees, :importance_economique, :utilisation, :diversification
  json.url vegetable_url(vegetable, format: :json)
end
