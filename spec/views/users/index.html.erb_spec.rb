require 'spec_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      FactoryGirl.create(:user),
      FactoryGirl.create(:user)
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Skillcrush".to_s, :count => 2
    assert_select "tr>td", :text => "Coder".to_s, :count => 2
    #assert_select "tr>td", :text => "@skillcrush.com".to_s, :count => 2
    #assert_select "tr>td", :text => "Password".to_s, :count => 2
  end
end
