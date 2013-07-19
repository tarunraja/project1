require 'spec_helper'

describe "UserPages" do

  subject {page}
  let (:base_title) { "Project1" }

  describe "signup page" do
    before { visit signup_path }
    it {should have_content('Sign up')}
    it {should have_title("#{base_title} | Sign up")}
  end
end
