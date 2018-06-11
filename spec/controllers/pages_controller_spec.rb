require 'rails_helper'

RSpec.describe PagesController, type: :controller do

	describe "pages" do

		it "returns http success" do
        get :index
        expect(response).to have_http_status(200)
        end

	end

end
