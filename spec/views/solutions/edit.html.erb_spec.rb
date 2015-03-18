require 'rails_helper'

RSpec.describe "solutions/edit", type: :view do
  before(:each) do
    @solution = assign(:solution, Solution.create!(
      :problem => "MyText",
      :image => "MyString",
      :solution => "MyText"
    ))
  end

  it "renders the edit solution form" do
    render

    assert_select "form[action=?][method=?]", solution_path(@solution), "post" do

      assert_select "textarea#solution_problem[name=?]", "solution[problem]"

      assert_select "input#solution_image[name=?]", "solution[image]"

      assert_select "textarea#solution_solution[name=?]", "solution[solution]"
    end
  end
end
