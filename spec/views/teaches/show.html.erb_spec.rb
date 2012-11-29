require 'spec_helper'

describe "teaches/show" do
  before(:each) do
    @teach = assign(:teach, stub_model(Teach))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
