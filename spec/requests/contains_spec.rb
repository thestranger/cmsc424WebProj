require 'spec_helper'

describe "Contains" do
  describe "GET /contains" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get contains_path
      response.status.should be(200)
    end
  end
end
