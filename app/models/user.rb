class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true

 #validate email has length of specific characters
 validates :email, length: { minimum: 5 }

 #validate the Uniqueness of email
 validates :email, uniqueness: true

 #validate password and confirmation
 validates :password, presence: true
 validates :password_confirmation, presence: true



end
