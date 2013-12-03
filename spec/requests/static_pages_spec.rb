require 'spec_helper'

describe "Static Pages" do
  
  let(:base_title){"Ruby on Rails Tutorial Sample App"}
  subject { page }
  
  describe "Home Pages" do
    before { visit root_path }
    
    it { should have_content('Sample App') }
    it { should have_title(full_title('')) }
    it { should_not have_title('| Home') }
  end

  describe "Help Pages" do
    before { visit help_path }
  
    it { should have_content('Help') }    
    it { should have_title(full_title('Help')) }
  
  end

  describe "About Pages" do
    before { visit about_path }
    
    it { should have_content('About Us') }
    it { should have_title(full_title('About Us')) }
  end
  
  describe "Contact" do
    before { visit contact_path }
    
    it { should have_content('Contact') }
    it { should have_title(full_title('Contact')) }     
  end
    
end
 



