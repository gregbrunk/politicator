require 'rails_helper'

RSpec.describe "policies/edit", type: :view do
  before(:each) do
    @policy = assign(:policy, Policy.create!(
      :name => "MyString",
      :left => "MyString",
      :right => "MyString"
    ))
  end

  it "renders the edit policy form" do
    render

    assert_select "form[action=?][method=?]", policy_path(@policy), "post" do

      assert_select "input#policy_name[name=?]", "policy[name]"

      assert_select "input#policy_left[name=?]", "policy[left]"

      assert_select "input#policy_right[name=?]", "policy[right]"
    end
  end
end
