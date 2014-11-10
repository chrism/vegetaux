class ViewerController < ApplicationController
  before_action :set_vegetable, only: [:show]

  def index
    @vegetable = Vegetable.first
    nexter = Nexter.wrap( Vegetable.all, @vegetable )
    @previous = nexter.previous
    @next = nexter.next
    render 'show'
  end

  def show
    nexter = Nexter.wrap( Vegetable.all, @vegetable )
    @previous = nexter.previous
    @next = nexter.next
  end

  private

    def set_vegetable
      @vegetable = Vegetable.find(params[:id])
    end

end
