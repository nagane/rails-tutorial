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
    before { visit help_path }

    it { should have_content('Help') }
    it { should have_title("Help") }
  end

  describe "About page" do
    before { visit about_path }

    it { should have_content('About') }
    it { should have_title("About") }
  end

  describe "Contact page" do
    before { visit contact_path }

    it { should have_content('Contact') }
    it { should have_title("Contact") }
  end


end
