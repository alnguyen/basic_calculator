require 'rails_helper'

RSpec.describe CalculatorController do
  describe "#index" do
    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end

  describe "#create" do
    it "renders the index template with empty result" do
      post :create, calculator: {operation: nil}
      expect(response).to render_template("index")
      expect(assigns(:result)).to eq("")
    end

    it "renders sets result appropriately" do
      post :create, calculator: {operation: "5*3+1+6/2+9*100"}
      expect(assigns(:result)).to eq(919)
    end
  end
end