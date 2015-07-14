class PrintPdf < Prawn::Document
  require 'open-uri'

  def initialize(vegetaux)
    super(page_layout: :landscape)
    @vegetaux = vegetaux
    render_vegetaux
  end

  def render_vegetaux
    @vegetaux.each_with_index do |vegetable, index|
      if (index % 2 == 1)
        xpos = 365
      else
        start_new_page unless index == 0
        xpos = 0
      end
      bounding_box([xpos, 540], width: 355, height: 540) do
        render_vegetable(vegetable, index)
        #transparent(0.5) { stroke_bounds }
      end
    end
  end

  def render_vegetable(vegetable, index)

    if vegetable.photo.file?
      image open(vegetable.photo.url(:medium)), :at => [0, 540], height: 100
    end

    bounding_box([155, 540], width: 200, height: 100) do
      text "#{vegetable.nom}", size: 16, style: :bold, align: :right
      text "#{vegetable.nom_commun}", size: 14, style: :bold, align: :right
    end

    move_cursor_to 420
    botanique_table_data(vegetable)
    technique_table_data(vegetable)
  end

  def botanique_table_data(vegetable)
    data = []

    data.push(["Origine géographique – milieu naturel", vegetable.origine_geographique]) if vegetable.origine_geographique.present?
    data.push(["Cycle biologique", vegetable.cycle_biologique]) if vegetable.cycle_biologique.present?
    data.push(["Racine", vegetable.racine]) if vegetable.racine.present?
    data.push(["Tige", vegetable.tige]) if vegetable.tige.present?
    data.push(["Feuillage", vegetable.feuillage]) if vegetable.feuillage.present?
    data.push(["Fleur", vegetable.fleur]) if vegetable.fleur.present?
    data.push(["Fruit", vegetable.fruit]) if vegetable.fruit.present?
    data.push(["Graine", vegetable.graine]) if vegetable.graine.present?
    if data.any?
      table(data, column_widths: [105, 250]) do
        cells.padding = 2
        cells.size = 8
        columns(0).size = 6
      end
      move_down 20
    end
  end

  def technique_table_data(vegetable)
    data = []


    data.push(["Modes de multiplication possibles", vegetable.modes_de_multiplication_possibles]) if vegetable.modes_de_multiplication_possibles.present?
    data.push(["Systèmes de productions adaptés", vegetable.systemes_de_production_adaptes]) if vegetable.systemes_de_production_adaptes.present?
    data.push(["Mise en place de la culture", vegetable.mise_en_place_de_la_culture]) if vegetable.mise_en_place_de_la_culture.present?
    data.push(["Calendrier cultural", vegetable.calendrier_cultural]) if vegetable.calendrier_cultural.present?
    data.push(["Entretien de la culture", vegetable.entretien_de_la_culture]) if vegetable.entretien_de_la_culture.present?
    data.push(["Exigences climatiques", vegetable.exigences_climatiques]) if vegetable.exigences_climatiques.present?
    data.push(["Exigences édaphiques (idéales)", vegetable.exigences_edaphiques_ideales]) if vegetable.exigences_edaphiques_ideales.present?
    data.push(["Irrigation", vegetable.irrigation]) if vegetable.irrigation.present?
    data.push(["Fertilisation", vegetable.fertilisation]) if vegetable.fertilisation.present?
    data.push(["Problèmes phytosanitaires et protections adaptées", vegetable.problemes_phytosanitaires_et_protections_adaptees]) if vegetable.problemes_phytosanitaires_et_protections_adaptees.present?
    data.push(["Importance économique", vegetable.importance_economique]) if vegetable.importance_economique.present?
    data.push(["Utilisation", vegetable.utilisation]) if vegetable.utilisation.present?
    data.push(["Diversification (variétés, cultivars…)", vegetable.diversification]) if vegetable.diversification.present?

    if data.any?
      table(data, column_widths: [105, 250]) do
        cells.padding = 2
        cells.size = 8
        columns(0).size = 6
      end
    end
  end
end