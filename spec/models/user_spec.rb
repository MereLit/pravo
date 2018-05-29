require 'rails_helper'

	RSpec.describe User, :type => :model do
		

		context "validation tests" do

			it "ensures nickname presence" do

				user = User.new(password: "qwerty123", email: "student@gmail.com").save
				expect(user).to eq(false)

			end




			it "ensures password presence" do

				user = User.new(nickname: "nickname", email: "student@gmail.com").save
				expect(user).to eq(false)

			end


			it "ensures email presence" do

				user = User.new(nickname: "nickname", password: "qwerty123").save
				expect(user).to eq(false)

			end



			it "unsuccessful save" do

				user = User.new(nickname: "nickname", password: "qwerty123",  email: "student@gmail.com").save
				expect(user).to eq(false)

			end



		end



	end


