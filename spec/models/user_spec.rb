require 'rails_helper'

<<<<<<< HEAD
RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
=======

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
>>>>>>> 0e85ce8e7b0a0ba37c4dc502d064aeba91c93b35
