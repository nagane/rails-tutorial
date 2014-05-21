require 'spec_helper'

describe "User Pages" do

  subject { page }

  describe "signup page" do
    before { visit signup_path }
    
    it { should have_content('Sign up') }
    it { should have_title('Sign up') }
  end
end

describe "profile page" do
  # ユーザー変数を作成するためのコードに置き換える。
  before { visit user_path(user) }

  it { should have_content(user.name) }
  it { should have_title(user.name) }
end
