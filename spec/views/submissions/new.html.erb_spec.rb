require 'spec_helper'

describe "submissions/new" do
  before(:each) do
    assign(:submission, stub_model(Submission,
      :student_id => "",
      :assignment_id => "",
      :score => 1.5,
      :course_id => ""
    ).as_new_record)
  end

  it "renders new submission form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => submissions_path, :method => "post" do
      assert_select "input#submission_student_id", :name => "submission[student_id]"
      assert_select "input#submission_assignment_id", :name => "submission[assignment_id]"
      assert_select "input#submission_score", :name => "submission[score]"
      assert_select "input#submission_course_id", :name => "submission[course_id]"
    end
  end
end
