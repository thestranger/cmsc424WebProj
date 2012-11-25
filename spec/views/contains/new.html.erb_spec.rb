require 'spec_helper'

describe "contains/new" do
  before(:each) do
    assign(:contain, stub_model(Contain,
      :question_id => 1,
      :assignment_id => 1
    ).as_new_record)
  end

  it "renders new contain form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => contains_path, :method => "post" do
      assert_select "input#contain_question_id", :name => "contain[question_id]"
      assert_select "input#contain_assignment_id", :name => "contain[assignment_id]"
    end
  end
end
