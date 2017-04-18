require 'rails_helper'

RSpec.describe Calculator do
  describe "#initialize" do
    it "does not raise with empty init" do
      expect{Calculator.new("")}.to_not raise_error
    end

    it "does not raise with valid expression on init" do
      expect{Calculator.new("1+1")}.to_not raise_error
    end

    it "raises with invalid expression on init" do
      expect{Calculator.new("invalid")}.to raise_error
    end
  end

  describe "#evaluate" do
    it "returns correct value" do
      calculator = Calculator.new("5*3+1+6/2+9*100")
      expect(calculator.evaluate).to eq(919.0)
    end
  end
end