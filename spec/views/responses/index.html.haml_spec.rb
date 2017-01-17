require 'rails_helper'

RSpec.describe "responses/index", type: :view do
  before(:each) do
    assign(:responses, [
      Response.create!(
        :body => "MyText",
        :user => nil,
        :post => nil
      ),
      Response.create!(
        :body => "MyText",
        :user => nil,
        :post => nil
      )
    ])
  end

  it "renders a list of responses" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
