require 'spec_helper'

describe "db_templates/index.html.erb" do
  before(:each) do
    assign(:db_templates, [
      stub_model(DbTemplate,
        :body => "MyText",
        :path => "Path",
        :format => "Format",
        :locale => "Locale",
        :handler => "Handler",
        :partial => false
      ),
      stub_model(DbTemplate,
        :body => "MyText",
        :path => "Path",
        :format => "Format",
        :locale => "Locale",
        :handler => "Handler",
        :partial => false
      )
    ])
  end

  it "renders a list of db_templates" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Path".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Format".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Locale".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Handler".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
