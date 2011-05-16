require 'spec_helper'

describe "db_templates/new.html.erb" do
  before(:each) do
    assign(:db_template, stub_model(DbTemplate,
      :body => "MyText",
      :path => "MyString",
      :format => "MyString",
      :locale => "MyString",
      :handler => "MyString",
      :partial => false
    ).as_new_record)
  end

  it "renders new db_template form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => db_templates_path, :method => "post" do
      assert_select "textarea#db_template_body", :name => "db_template[body]"
      assert_select "input#db_template_path", :name => "db_template[path]"
      assert_select "input#db_template_format", :name => "db_template[format]"
      assert_select "input#db_template_locale", :name => "db_template[locale]"
      assert_select "input#db_template_handler", :name => "db_template[handler]"
      assert_select "input#db_template_partial", :name => "db_template[partial]"
    end
  end
end
