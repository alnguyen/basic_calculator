class Calculator
  def initialize(expression)
    validate_expression(expression)
    @expression = expression
  end

  def evaluate(round: 2)
    eval(formatted_expression).to_f.round(round)
  end

  private

  def validate_expression(input)
    raise "Invalid expression" if input.present? && input.scan(/(\d+)([+\-*\/])(\d+)/).first.nil?
  end

  def formatted_expression
    @expression.each_char.with_index.map{|char, index|
      if char.match(/\d/) && !@expression[index+1].nil? && !@expression[index+1].match(/[^\.\+\-\*\/]/)
        char.to_f
      else
        char
      end
    }.join("")
  end
end