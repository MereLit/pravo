require 'rails_helper'

RSpec.describe PostsController, type: :controller do

	 let!(:user) { build(:user, email: "nick@test.com") }

    login_user

	describe "GET #index" do
          it "returns http success" do
            get :index
            expect(response).to have_http_status(:success)
          end
        end


    describe 'POST #create' do
      it "creating	" do
        post :create, params: {post: {user_id: 1, title: "title", body: "body"}}
         expect(response).to have_http_status(200)
      end
    end


end
