require 'calc'

class CalculatorController < ApplicationController
  def index
  end

  def create
    @result = Calc.evaluate(expression).to_f.round(2)
    render :index
  end

  def expression
    exp = params[:calculator][:operation]
    exp.each_char.with_index.map{|char, index|
      if char.match(/\d/) && !exp[index+1].nil? && !exp[index+1].match(/[^\.\+\-\*\/]/)
        char.to_f
      else
        char
      end
    }.join("")
  end
end