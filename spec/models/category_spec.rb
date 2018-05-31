require 'rails_helper'

RSpec.describe Category, type: :model do
  
	describe "validations" do
    it{ should have_many(:predmets)}
    it{ should belong_to (:rozklad) }
    
  end
	


end
