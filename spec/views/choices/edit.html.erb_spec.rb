require 'rails_helper'

RSpec.describe "choices/edit", type: :view do
  before(:each) do
    @choice = assign(:choice, Choice.create!(
      :choice => "MyString"
    ))
  end

  it "renders the edit choice form" do
    render

    assert_select "form[action=?][method=?]", choice_path(@choice), "post" do

      assert_select "input#choice_choice[name=?]", "choice[choice]"
    end
  end
end
