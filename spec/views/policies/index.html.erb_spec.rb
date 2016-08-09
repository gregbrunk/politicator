require 'rails_helper'

RSpec.describe "policies/index", type: :view do
  before(:each) do
    assign(:policies, [
      Policy.create!(
        :name => "Name",
        :left => "Left",
        :right => "Right"
      ),
      Policy.create!(
        :name => "Name",
        :left => "Left",
        :right => "Right"
      )
    ])
  end

  it "renders a list of policies" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Left".to_s, :count => 2
    assert_select "tr>td", :text => "Right".to_s, :count => 2
  end
end
