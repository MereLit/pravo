require 'rails_helper'

RSpec.describe Predmet, type: :model do
  
   it { should belong_to(:rozklad) }
   it { should belong_to(:category) }

end
