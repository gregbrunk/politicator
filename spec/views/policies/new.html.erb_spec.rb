require 'rails_helper'

RSpec.describe "policies/new", type: :view do
  before(:each) do
    assign(:policy, Policy.new(
      :name => "MyString",
      :left => "MyString",
      :right => "MyString"
    ))
  end

  it "renders new policy form" do
    render

    assert_select "form[action=?][method=?]", policies_path, "post" do

      assert_select "input#policy_name[name=?]", "policy[name]"

      assert_select "input#policy_left[name=?]", "policy[left]"

      assert_select "input#policy_right[name=?]", "policy[right]"
    end
  end
end
