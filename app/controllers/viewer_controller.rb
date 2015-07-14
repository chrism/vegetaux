class ViewerController < ApplicationController
  before_action :set_vegetable, only: [:show]

  def index
    @vegetable = Vegetable.first
    nexter = Nexter.wrap( Vegetable.all, @vegetable )
    @previous = nexter.previous
    @next = nexter.next

    @first = @vegetable
    @last = Vegetable.last

    render 'show'
  end

  def show
    nexter = Nexter.wrap( Vegetable.all, @vegetable )
    @previous = nexter.previous
    @next = nexter.next

    @first = Vegetable.first
    @last = Vegetable.last
  end

  def print
    @vegetaux = Vegetable.all

    #puts @vegetaux.inspect

    respond_to do |format|
      format.html
      format.pdf do
        pdf = PrintPdf.new(@vegetaux)
        send_data pdf.render, filename: "vegetaux.pdf", type: "application/pdf", disposition: "inline"
      end
    end
  end

  private

    def set_vegetable
      @vegetable = Vegetable.find(params[:id])
    end

end
