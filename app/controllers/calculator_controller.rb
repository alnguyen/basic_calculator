class CalculatorController < ApplicationController
  def index
  end

  def create
    @result = Calculator.new(params[:calculator][:operation]).evaluate
    render :index
  end
end