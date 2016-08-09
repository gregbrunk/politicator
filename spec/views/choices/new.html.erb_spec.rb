require 'rails_helper'

RSpec.describe "choices/new", type: :view do
  before(:each) do
    assign(:choice, Choice.new(
      :choice => "MyString"
    ))
  end

  it "renders new choice form" do
    render

    assert_select "form[action=?][method=?]", choices_path, "post" do

      assert_select "input#choice_choice[name=?]", "choice[choice]"
    end
  end
end
