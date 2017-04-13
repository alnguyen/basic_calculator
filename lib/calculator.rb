class Calculator
  def self.compute(input)
    # Eval is dangerous.  Security reasons.
    eval(input)
  end
end