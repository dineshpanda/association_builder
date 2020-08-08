require "rails_helper"

RSpec.describe "models#create", type: :request do
  subject(:make_request) do
    jsonapi_post "/api/v1/models", payload
  end

  describe "basic create" do
    let(:params) do
      attributes_for(:model)
    end
    let(:payload) do
      {
        data: {
          type: "models",
          attributes: params,
        },
      }
    end

    it "works" do
      expect(ModelResource).to receive(:build).and_call_original
      expect do
        make_request
        expect(response.status).to eq(201), response.body
      end.to change { Model.count }.by(1)
    end
  end
end
