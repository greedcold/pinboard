class PinsController < ApplicationController
  before_action :find_pin, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  end
  def new
    @pin = Pin.new
  end

  def create
    @pin = Pin.new(pin_params)

    if @pin.save
      redirect_to @pin, notice: "pin is created"
    else
      render 'new'
  end

  private

  def pin_params
    params.require(:pin).permit(:title, :description)

  def find_pin
    @pin = Pin.find(params[:id])
  end

  end
end
