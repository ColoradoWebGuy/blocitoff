require 'rails_helper'

RSpec.describe ChecklistsController, type: :controller do

  let (:my_checklist) { create(:checklist) }

  describe "GET index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end

    it "assigns [my_checklist] to @checklists" do
       get :index
       expect(assigns(:checklists)).to eq([my_checklist])
     end
  end

  describe "GET show" do
    it "returns http success" do
      get :show, id: my_checklist.id
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET edit" do
    it "returns http success" do
      get :edit, id: my_checklist.id
      expect(response).to have_http_status(:success)
    end
  end

end
