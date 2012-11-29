require 'spec_helper'

describe "teaches/index" do
  before(:each) do
    assign(:teaches, [
      stub_model(Teach),
      stub_model(Teach)
    ])
  end

  it "renders a list of teaches" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
