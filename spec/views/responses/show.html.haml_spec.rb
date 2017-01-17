require 'rails_helper'

RSpec.describe "responses/show", type: :view do
  before(:each) do
    @response = assign(:response, Response.create!(
      :body => "MyText",
      :user => nil,
      :post => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
