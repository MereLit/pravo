require 'rails_helper'


	RSpec.describe User, :type => :model do
		

		it{should have_many(:posts)}
		it{should have_many(:postcomments)}

		describe "validations" do
    		it{ is_expected.to validate_presence_of :nickname }
    		it{ is_expected.to validate_presence_of :email }
    		it{ is_expected.to validate_uniqueness_of :nickname }
    		# it{ is_expected.to validate_uniqueness_of :email }
    
  		end


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



	


		end



	end
