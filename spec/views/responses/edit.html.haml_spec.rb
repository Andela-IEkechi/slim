require 'rails_helper'

RSpec.describe "responses/edit", type: :view do
  before(:each) do
    @response = assign(:response, Response.create!(
      :body => "MyText",
      :user => nil,
      :post => nil
    ))
  end

  it "renders the edit response form" do
    render

    assert_select "form[action=?][method=?]", response_path(@response), "post" do

      assert_select "textarea#response_body[name=?]", "response[body]"

      assert_select "input#response_user_id[name=?]", "response[user_id]"

      assert_select "input#response_post_id[name=?]", "response[post_id]"
    end
  end
end
