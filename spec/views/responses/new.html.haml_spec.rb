require 'rails_helper'

RSpec.describe "responses/new", type: :view do
  before(:each) do
    assign(:response, Response.new(
      :body => "MyText",
      :user => nil,
      :post => nil
    ))
  end

  it "renders new response form" do
    render

    assert_select "form[action=?][method=?]", responses_path, "post" do

      assert_select "textarea#response_body[name=?]", "response[body]"

      assert_select "input#response_user_id[name=?]", "response[user_id]"

      assert_select "input#response_post_id[name=?]", "response[post_id]"
    end
  end
end
