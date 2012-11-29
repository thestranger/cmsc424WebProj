require 'spec_helper'

describe "teaches/new" do
  before(:each) do
    assign(:teach, stub_model(Teach).as_new_record)
  end

  it "renders new teach form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => teaches_path, :method => "post" do
    end
  end
end
