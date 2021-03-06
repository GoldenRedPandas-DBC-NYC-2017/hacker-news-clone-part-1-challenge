class User < ApplicationRecord
  validates :first_name, :last_name, :email, :password, presence: true
  validates :email, uniqueness: true

  has_many :post, :comment

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end


  def self.authenticate(email, plaintext_password)
    return nil unless user = find_by(email: email)
    return user if user.password == plaintext_password
    return nil
  end
end
