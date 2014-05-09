require 'spec_helper'

describe "Static Pages" do
  
  # subjectを定義した事により
  # should呼び出しは自動的にCapybaraにより提供されるpage変数を仕様する
  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_content('Sample App') }
    it { should have_title("Home") }
    it { should_not have_title("Sample App") }
  end
  
  describe "Help page" do

    it "should have the content 'Help'" do
      visit help_path
      expect(page).to have_content('Help')
    end
    it "should have the right title" do
      visit help_path
      expect(page).to have_title("Help")
    end
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit about_path
      expect(page).to have_content('About Us')
    end
    it "should have the right title" do
      visit about_path
      expect(page).to have_title("About Us")
    end
  end

  describe "Contact page" do

    it "should have the content 'Contact'" do
      visit contact_path
      expect(page).to have_content('Contact')
    end
    it "should have the title 'Contact'" do
      visit contact_path
      expect(page).to have_title("Contact")
    end
  end


end
