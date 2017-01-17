require 'rails_helper'

RSpec.describe "news/new", type: :view do
  before(:each) do
    assign(:news, News.new(
      :author => "MyString",
      :summary => "MyText",
      :agency => "MyString",
      :link => "MyString",
      :tags => "MyString",
      :title => "MyString"
    ))
  end

  it "renders new news form" do
    render

    assert_select "form[action=?][method=?]", news_index_path, "post" do

      assert_select "input#news_author[name=?]", "news[author]"

      assert_select "textarea#news_summary[name=?]", "news[summary]"

      assert_select "input#news_agency[name=?]", "news[agency]"

      assert_select "input#news_link[name=?]", "news[link]"

      assert_select "input#news_tags[name=?]", "news[tags]"

      assert_select "input#news_title[name=?]", "news[title]"
    end
  end
end
