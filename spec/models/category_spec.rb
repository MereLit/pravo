require 'rails_helper'

RSpec.describe Category, type: :model do
<<<<<<< HEAD
  pending "add some examples to (or delete) #{__FILE__}"
=======
  
	describe "validations" do
    it{ should have_many(:predmets)}
    it{ should belong_to (:rozklad) }
    
  end
	


>>>>>>> 0e85ce8e7b0a0ba37c4dc502d064aeba91c93b35
end
