require 'test_helper'

class VegetauxControllerTest < ActionController::TestCase
  setup do
    @vegetable = vegetaux(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vegetaux)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vegetable" do
    assert_difference('Vegetable.count') do
      post :create, vegetable: { calendrier_cultural: @vegetable.calendrier_cultural, classe: @vegetable.classe, cycle_biologique: @vegetable.cycle_biologique, diversification: @vegetable.diversification, entretien_de_la_culture: @vegetable.entretien_de_la_culture, espece: @vegetable.espece, exigences_edaphiques_ideales: @vegetable.exigences_edaphiques_ideales, famille_id: @vegetable.famille_id, fertilisation: @vegetable.fertilisation, feuillage: @vegetable.feuillage, fleur: @vegetable.fleur, fruit: @vegetable.fruit, genre: @vegetable.genre, graine: @vegetable.graine, importance_economique: @vegetable.importance_economique, irrigation: @vegetable.irrigation, mise_en_place_de_la_culture: @vegetable.mise_en_place_de_la_culture, modes_de_multiplication_possibles: @vegetable.modes_de_multiplication_possibles, nom_common: @vegetable.nom_common, origine_geographique: @vegetable.origine_geographique, problemes_phytosanitaires_et_protections_adaptees: @vegetable.problemes_phytosanitaires_et_protections_adaptees, racine: @vegetable.racine, systemes_de_production_adaptes: @vegetable.systemes_de_production_adaptes, tige: @vegetable.tige, utilisation: @vegetable.utilisation }
    end

    assert_redirected_to vegetable_path(assigns(:vegetable))
  end

  test "should show vegetable" do
    get :show, id: @vegetable
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vegetable
    assert_response :success
  end

  test "should update vegetable" do
    patch :update, id: @vegetable, vegetable: { calendrier_cultural: @vegetable.calendrier_cultural, classe: @vegetable.classe, cycle_biologique: @vegetable.cycle_biologique, diversification: @vegetable.diversification, entretien_de_la_culture: @vegetable.entretien_de_la_culture, espece: @vegetable.espece, exigences_edaphiques_ideales: @vegetable.exigences_edaphiques_ideales, famille_id: @vegetable.famille_id, fertilisation: @vegetable.fertilisation, feuillage: @vegetable.feuillage, fleur: @vegetable.fleur, fruit: @vegetable.fruit, genre: @vegetable.genre, graine: @vegetable.graine, importance_economique: @vegetable.importance_economique, irrigation: @vegetable.irrigation, mise_en_place_de_la_culture: @vegetable.mise_en_place_de_la_culture, modes_de_multiplication_possibles: @vegetable.modes_de_multiplication_possibles, nom_common: @vegetable.nom_common, origine_geographique: @vegetable.origine_geographique, problemes_phytosanitaires_et_protections_adaptees: @vegetable.problemes_phytosanitaires_et_protections_adaptees, racine: @vegetable.racine, systemes_de_production_adaptes: @vegetable.systemes_de_production_adaptes, tige: @vegetable.tige, utilisation: @vegetable.utilisation }
    assert_redirected_to vegetable_path(assigns(:vegetable))
  end

  test "should destroy vegetable" do
    assert_difference('Vegetable.count', -1) do
      delete :destroy, id: @vegetable
    end

    assert_redirected_to vegetaux_path
  end
end
