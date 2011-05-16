require 'spec_helper'

describe "db_templates/show.html.erb" do
  before(:each) do
    @db_template = assign(:db_template, stub_model(DbTemplate,
      :body => "MyText",
      :path => "Path",
      :format => "Format",
      :locale => "Locale",
      :handler => "Handler",
      :partial => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Path/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Format/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Locale/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Handler/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
  end
end
