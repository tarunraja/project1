require 'spec_helper'

describe "StaticPages" do

  subject {page}

  let(:base_title) { "Project1" }
    
  describe "Home page" do
    before { visit root_path }
    it {should have_content('Home')}  
    it {should have_title("#{base_title} | Home")}
  end

  describe "Contact page" do
    before {visit contact_path}
    it {should have_content('Contact')}
    it {should have_title("#{base_title} | Contact")}
  end

  describe "About Us page" do
    before {visit aboutus_path}  
    it {should have_content('About Us')}
    it {should have_title("#{base_title} | About Us")}
  end

end
