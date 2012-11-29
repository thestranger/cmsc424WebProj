require 'spec_helper'

describe "teaches/edit" do
  before(:each) do
    @teach = assign(:teach, stub_model(Teach))
  end

  it "renders the edit teach form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => teaches_path(@teach), :method => "post" do
    end
  end
end
