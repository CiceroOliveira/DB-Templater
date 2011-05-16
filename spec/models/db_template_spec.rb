require 'spec_helper'

describe DbTemplate do
  it 'return a template with the saved body' do
    resolver = DbTemplate::Resolver.new
    details = { :formats => [:html], :locale => [:en], :handlers => [:erb]}
    
    assert resolver.find_all("index", "posts", false, details).empty?
    
    DbTemplate.create!(
      :body => "<%= 'Hi from DbTemplate!' %>",
      :path => "posts/index",
      :format => "html",
      :locale => "en",
      :handler => "erb",
      :partial => false
    )
    
    template = resolver.find_all("index", "posts", false, details).first

    template.should be_a_kind_of(ActionView::Template)
    
    template.source.should == "<%= 'Hi from DbTemplate!' %>"
    template.identifier.should match(/DbTemplate - \w+ - "posts\/index"/)
    template.handler.should be_a_kind_of(ActionView::Template::Handlers::ERB)
    template.formats.should == [:html]
    template.virtual_path.should == "posts/index"
  end
end
