	require 'rails_helper'

RSpec.describe Post, type:  :model do


	# it{ should have_many(:postcomments).dependent(:destroy)}
    it { should belong_to(:user) }
    it { should have_many(:postcomments)}

	describe "validations" do
    it{ is_expected.to validate_length_of :title }
    it{ is_expected.to validate_length_of :body }
    it{ is_expected.to validate_uniqueness_of :title }
    it{ is_expected.to validate_presence_of :title }
    # it{ is_expected.to validate_have_attached_file :image}
  end
	
end
