<<<<<<< HEAD
require 'rails_helper'

RSpec.describe "pets/index", type: :view do
  before(:each) do
    assign(:pets, [
      Pet.create!(
        :name => "Name",
        :description => "MyText",
        :image => "Image"
      ),
      Pet.create!(
        :name => "Name",
        :description => "MyText",
        :image => "Image"
      )
    ])
  end

  it "renders a list of pets" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
  end
end
=======
# require 'rails_helper'

# RSpec.describe "pets/index", type: :view do
#   before(:each) do
#     assign(:pets, [
#       Pet.create!(
#         :name => "Name",
#         :description => "MyText",
#         :image => "Image"
#       ),
#       Pet.create!(
#         :name => "Name",
#         :description => "MyText",
#         :image => "Image"
#       )
#     ])
#   end

#   it "renders a list of pets" do
#     render
#     assert_select "tr>td", :text => "Name".to_s, :count => 2
#     assert_select "tr>td", :text => "MyText".to_s, :count => 2
#     assert_select "tr>td", :text => "Image".to_s, :count => 2
#   end
# end
>>>>>>> 0e85ce8e7b0a0ba37c4dc502d064aeba91c93b35
