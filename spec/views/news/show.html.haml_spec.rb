require 'rails_helper'

RSpec.describe "news/show", type: :view do
  before(:each) do
    @news = assign(:news, News.create!(
      :author => "Author",
      :summary => "MyText",
      :agency => "Agency",
      :link => "Link",
      :tags => "Tags",
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Author/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Agency/)
    expect(rendered).to match(/Link/)
    expect(rendered).to match(/Tags/)
    expect(rendered).to match(/Title/)
  end
end
