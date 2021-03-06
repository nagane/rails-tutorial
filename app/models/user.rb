class User < ActiveRecord::Base
  has_many :microposts
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  before_save { email.downcase! }
  # セキュアなパスワードを実装するメソッド
  has_secure_password
  validates :password, length: { minimum: 6 }
end
