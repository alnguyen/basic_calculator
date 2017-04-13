class CalculatorController < ApplicationController
  def index
  end

  def new
    @result = params[:operation].first
    render :index
  end
end