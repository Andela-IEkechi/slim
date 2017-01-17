require 'rails_helper'

RSpec.describe "news/index", type: :view do
  before(:each) do
    assign(:news, [
      News.create!(
        :author => "Author",
        :summary => "MyText",
        :agency => "Agency",
        :link => "Link",
        :tags => "Tags",
        :title => "Title"
      ),
      News.create!(
        :author => "Author",
        :summary => "MyText",
        :agency => "Agency",
        :link => "Link",
        :tags => "Tags",
        :title => "Title"
      )
    ])
  end

  it "renders a list of news" do
    render
    assert_select "tr>td", :text => "Author".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Agency".to_s, :count => 2
    assert_select "tr>td", :text => "Link".to_s, :count => 2
    assert_select "tr>td", :text => "Tags".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
