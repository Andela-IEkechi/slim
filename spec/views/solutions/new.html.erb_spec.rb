require 'rails_helper'

RSpec.describe "solutions/new", type: :view do
  before(:each) do
    assign(:solution, Solution.new(
      :problem => "MyText",
      :image => "MyString",
      :solution => "MyText"
    ))
  end

  it "renders new solution form" do
    render

    assert_select "form[action=?][method=?]", solutions_path, "post" do

      assert_select "textarea#solution_problem[name=?]", "solution[problem]"

      assert_select "input#solution_image[name=?]", "solution[image]"

      assert_select "textarea#solution_solution[name=?]", "solution[solution]"
    end
  end
end
