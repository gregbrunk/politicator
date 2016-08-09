require 'rails_helper'

RSpec.describe "choices/show", type: :view do
  before(:each) do
    @choice = assign(:choice, Choice.create!(
      :choice => "Choice"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Choice/)
  end
end
