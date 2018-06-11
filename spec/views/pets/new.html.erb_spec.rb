<<<<<<< HEAD
require 'rails_helper'

RSpec.describe "pets/new", type: :view do
  before(:each) do
    assign(:pet, Pet.new(
      :name => "MyString",
      :description => "MyText",
      :image => "MyString"
    ))
  end

  it "renders new pet form" do
    render

    assert_select "form[action=?][method=?]", pets_path, "post" do

      assert_select "input#pet_name[name=?]", "pet[name]"

      assert_select "textarea#pet_description[name=?]", "pet[description]"

      assert_select "input#pet_image[name=?]", "pet[image]"
    end
  end
end
=======
# require 'rails_helper'

# RSpec.describe "pets/new", type: :view do
#   before(:each) do
#     assign(:pet, Pet.new(
#       :name => "MyString",
#       :description => "MyText",
#       :image => "MyString"
#     ))
#   end

#   it "renders new pet form" do
#     render

#     assert_select "form[action=?][method=?]", pets_path, "post" do

#       assert_select "input#pet_name[name=?]", "pet[name]"

#       assert_select "textarea#pet_description[name=?]", "pet[description]"

#       assert_select "input#pet_image[name=?]", "pet[image]"
#     end
#   end
# end
>>>>>>> 0e85ce8e7b0a0ba37c4dc502d064aeba91c93b35
