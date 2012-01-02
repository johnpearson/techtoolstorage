require 'spec_helper'

describe PagesController do
  render_views
  
  describe "GET 'home'" do
    
    before(:each) do
      get :home
    end
    
    it "should be successful" do
      response.should be_success
    end
    
    it "should have the right title" do
      response.should have_selector("title", :content => "Techtool Storage")
    end
    
    it "should have a header image" do
      response.should have_selector("img", :src => "/assets/techtool_header.gif")
    end
  end
end
