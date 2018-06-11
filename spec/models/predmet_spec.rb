require 'rails_helper'

RSpec.describe Predmet, type: :model do
<<<<<<< HEAD
  pending "add some examples to (or delete) #{__FILE__}"
=======
  
   it { should belong_to(:rozklad) }
   it { should belong_to(:category) }

>>>>>>> 0e85ce8e7b0a0ba37c4dc502d064aeba91c93b35
end
