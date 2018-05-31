require 'rails_helper'

RSpec.describe Rozklad, type: :model do
  
	 it { should have_many(:predmets) }
	 it { should have_many(:category) }

end
