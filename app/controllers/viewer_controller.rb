class ViewerController < ApplicationController
  before_action :set_vegetable, only: [:show]

  def index
    vegetables = Vegetable.all
    @vegetable = Vegetable.first
    nexter = Nexter.wrap( vegetables, @vegetable )
    @previous = nexter.previous
    @next = nexter.next
    render 'show'
  end

  def show
    vegetables = Vegetable.all
    nexter = Nexter.wrap( vegetables, @vegetable )
    @previous = nexter.previous
    @next = nexter.next
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vegetable
      @vegetable = Vegetable.find(params[:id])
    end

end
