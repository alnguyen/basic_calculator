require 'calc'

class CalculatorController < ApplicationController
  def index
  end

  def create
    @result = Calc.evaluate(params[:calculator][:operation])
    render :index
  end
end