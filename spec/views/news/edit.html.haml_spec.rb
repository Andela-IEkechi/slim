require 'rails_helper'

RSpec.describe "news/edit", type: :view do
  before(:each) do
    @news = assign(:news, News.create!(
      :author => "MyString",
      :summary => "MyText",
      :agency => "MyString",
      :link => "MyString",
      :tags => "MyString",
      :title => "MyString"
    ))
  end

  it "renders the edit news form" do
    render

    assert_select "form[action=?][method=?]", news_path(@news), "post" do

      assert_select "input#news_author[name=?]", "news[author]"

      assert_select "textarea#news_summary[name=?]", "news[summary]"

      assert_select "input#news_agency[name=?]", "news[agency]"

      assert_select "input#news_link[name=?]", "news[link]"

      assert_select "input#news_tags[name=?]", "news[tags]"

      assert_select "input#news_title[name=?]", "news[title]"
    end
  end
end
