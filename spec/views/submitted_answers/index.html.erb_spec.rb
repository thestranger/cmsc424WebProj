require 'spec_helper'

describe "submitted_answers/index" do
  before(:each) do
    assign(:submitted_answers, [
      stub_model(SubmittedAnswer,
        :question_id => 1,
        :submission_id => 2,
        :given_answer => "MyText",
        :points => 1.5
      ),
      stub_model(SubmittedAnswer,
        :question_id => 1,
        :submission_id => 2,
        :given_answer => "MyText",
        :points => 1.5
      )
    ])
  end

  it "renders a list of submitted_answers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
