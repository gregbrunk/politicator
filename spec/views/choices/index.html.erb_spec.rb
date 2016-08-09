require 'rails_helper'

RSpec.describe "choices/index", type: :view do
  before(:each) do
    assign(:choices, [
      Choice.create!(
        :choice => "Choice"
      ),
      Choice.create!(
        :choice => "Choice"
      )
    ])
  end

  it "renders a list of choices" do
    render
    assert_select "tr>td", :text => "Choice".to_s, :count => 2
  end
end
