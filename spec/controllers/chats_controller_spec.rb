require 'rails_helper'

RSpec.describe ChatsController, type: :controller do
  describe "chats#index action" do
   
    it "should show a user their existing chat sessions" do
      user = FactoryBot.create(:user)
      sign_in user
      get :index
      expect(response).to have_http_status(:success)
    end

  end

  describe "chats#destroy action" do

    it "should allow a user who is part of a chat to destroy it" do
    end

  end

  describe "chats#new action" do

    it "should require users to be logged in" do
      get :new
      expect(response).to redirect_to new_user_sesson_path
    end

    it "should successfully show the new form" do
      user = FactoryBot.create(:user)
      sign_in user

      get :new
      expect(response).to have_http_status(:success)
    end

  end

  describe "chats#create action" do

    it "should require users to be logged in" do
    end

    it "should successfully create a new chat" do
    end



  end
end
