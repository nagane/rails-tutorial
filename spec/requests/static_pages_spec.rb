require 'spec_helper'

describe "Static Pages" do
  
  # subjectを定義した事により
  # should呼び出しは自動的にCapybaraにより提供されるpage変数を仕様する
  subject { page }

  shared_examples_for "all static pages" do
    it { should have_content(heading) }
    it { should have_title(page_title) }
  end
  
  describe "Home page" do
    before { visit root_path }
    let(:heading)   { 'Sample App' }
    let(:page_title) { 'Home' }
    it_should_behave_like "all static pages"
    it { should_not have_title("Sample App") }
  end
  
  describe "Help page" do
    before { visit help_path }
    let(:heading)   { 'Help' }
    let(:page_title) { 'Help' }
    it_should_behave_like "all static pages"
  end

  describe "About page" do
    before { visit about_path }
    let(:heading)   { 'About' }
    let(:page_title) { 'About' }
    it_should_behave_like "all static pages"
  end

  describe "Contact page" do
    before { visit contact_path }
    let(:heading)   { 'Contact' }
    let(:page_title) { 'Contact' }
    it_should_behave_like "all static pages"
  end

  it "showld have the right links on the layout" do
    visit root_path
    click_link "Home"
    click_link "Help"
    expect(page).to have_title('Help')
    click_link "About"
    expect(page).to have_title('About')
    click_link "Contact"
    expect(page).to have_title('Contact')
  end
end
