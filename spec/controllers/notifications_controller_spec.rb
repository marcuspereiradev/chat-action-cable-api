require 'rails_helper'

RSpec.describe NotificationsController, type: :controller do

  describe "GET #create" do
    it "returns http success" do
      get :create
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #all_params?" do
    it "returns http success" do
      get :all_params?
      expect(response).to have_http_status(:success)
    end
  end

end
