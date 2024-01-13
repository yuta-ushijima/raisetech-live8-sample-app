require 'rails_helper'

RSpec.describe "Messages", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/messages/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/messages/create"
      expect(response).to have_http_status(:success)
    end
  end

end
