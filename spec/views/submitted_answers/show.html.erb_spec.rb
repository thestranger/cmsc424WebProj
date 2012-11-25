require 'spec_helper'

describe "submitted_answers/show" do
  before(:each) do
    @submitted_answer = assign(:submitted_answer, stub_model(SubmittedAnswer,
      :question_id => 1,
      :submission_id => 2,
      :given_answer => "MyText",
      :points => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/MyText/)
    rendered.should match(/1.5/)
  end
end
