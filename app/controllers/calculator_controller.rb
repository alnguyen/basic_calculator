class CalculatorController < ApplicationController
  def index
  end

  def create
    @result = Calculator.compute(params[:operation].first)
    render :index
  end
end