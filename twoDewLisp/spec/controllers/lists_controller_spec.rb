require 'rails_helper'

RSpec.describe ListsController, type: :controller do

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status :success
      expect(response).to have_rendered :new
    end
  end

  describe "GET #create" do
    it "returns http success" do
      get :create, list: {title: "Lisp", description: "ssssssp"}
      expect(response).to have_http_status :redirect
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      get :edit, id: 1
      expect(response).to have_http_status :success
      expect(response).to have_rendered :edit
    end
  end

  describe "GET #destroy" do
    it "returns http success" do
      fake_list = double :list
      expect(List).to receive(:find).with('1').and_return(fake_list)
      expect(fake_list).to receive(:destroy)
      get :destroy, id: 1
      expect(response).to have_http_status :redirect
    end
  end

  describe "GET #show" do
    it "returns http success" do
      fake_list = double :list
      expect(List).to receive(:find).with('1').and_return(fake_list)

      get :show, id: 1
      expect(response).to have_http_status :success
      expect(response).to have_rendered :show
    end
  end

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status :success
      expect(response).to have_rendered :index
    end
  end

  describe "GET #update" do
    it "returns http success" do
      fake_list = double :list
      expect(List).to receive(:find).with('1').and_return(fake_list)
      expect(fake_list).to receive(:update)
      get :update, id: 1, list: {title: "new lisp", description: "ssssssssssp"}
      expect(response).to have_http_status :redirect
    end
  end

end
