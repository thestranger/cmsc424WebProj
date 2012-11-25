require 'spec_helper'

describe "submitted_answers/new" do
  before(:each) do
    assign(:submitted_answer, stub_model(SubmittedAnswer,
      :question_id => 1,
      :submission_id => 1,
      :given_answer => "MyText",
      :points => 1.5
    ).as_new_record)
  end

  it "renders new submitted_answer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => submitted_answers_path, :method => "post" do
      assert_select "input#submitted_answer_question_id", :name => "submitted_answer[question_id]"
      assert_select "input#submitted_answer_submission_id", :name => "submitted_answer[submission_id]"
      assert_select "textarea#submitted_answer_given_answer", :name => "submitted_answer[given_answer]"
      assert_select "input#submitted_answer_points", :name => "submitted_answer[points]"
    end
  end
end
