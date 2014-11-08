class VegetauxController < ApplicationController
  before_action :set_vegetable, only: [:show, :edit, :update, :destroy]

  # GET /vegetaux
  # GET /vegetaux.json
  def index
    @vegetaux = Vegetable.all
  end

  # GET /vegetaux/1
  # GET /vegetaux/1.json
  def show
  end

  # GET /vegetaux/new
  def new
    @vegetable = Vegetable.new
  end

  # GET /vegetaux/1/edit
  def edit
  end

  # POST /vegetaux
  # POST /vegetaux.json
  def create
    @vegetable = Vegetable.new(vegetable_params)

    respond_to do |format|
      if @vegetable.save
        format.html { redirect_to @vegetable, notice: 'Vegetable was successfully created.' }
        format.json { render :show, status: :created, location: @vegetable }
      else
        format.html { render :new }
        format.json { render json: @vegetable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vegetaux/1
  # PATCH/PUT /vegetaux/1.json
  def update
    respond_to do |format|
      if @vegetable.update(vegetable_params)
        format.html { redirect_to @vegetable, notice: 'Vegetable was successfully updated.' }
        format.json { render :show, status: :ok, location: @vegetable }
      else
        format.html { render :edit }
        format.json { render json: @vegetable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vegetaux/1
  # DELETE /vegetaux/1.json
  def destroy
    @vegetable.destroy
    respond_to do |format|
      format.html { redirect_to vegetaux_url, notice: 'Vegetable was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vegetable
      @vegetable = Vegetable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vegetable_params
      params.require(:vegetable).permit(:nom_common, :famille_id, :classe, :genre, :espece, :origine_geographique, :cycle_biologique, :racine, :tige, :feuillage, :fleur, :fruit, :graine, :modes_de_multiplication_possibles, :systemes_de_production_adaptes, :mise_en_place_de_la_culture, :calendrier_cultural, :entretien_de_la_culture, :exigences_edaphiques_ideales, :irrigation, :fertilisation, :problemes_phytosanitaires_et_protections_adaptees, :importance_economique, :utilisation, :diversification)
    end
end
