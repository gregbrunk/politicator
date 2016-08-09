require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :first_name => "First Name",
      :last_name => "Last Name",
      :location => "Location",
      :party => "Party",
      :email => "Email",
      :profile_pic => "Profile Pic",
      :password_digest => "Password Digest"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/Party/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Profile Pic/)
    expect(rendered).to match(/Password Digest/)
  end
end
