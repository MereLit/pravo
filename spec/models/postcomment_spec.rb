require 'rails_helper'

RSpec.describe Postcomment, type: :model do
 
	 it { should belong_to(:user) }
	 it { should belong_to(:post) }

	 describe "validations" do
    it{ is_expected.to validate_presence_of :text }
    it{ is_expected.to validate_length_of :text }
    
  end
	

end
