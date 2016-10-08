class User < ApplicationRecord
	             # whole statement is similiar to writing email.downcase!
	before_save {self.email= email.downcase} # self.email.downcase can be written as email.downcase
	validates(:name, presence: true, length: {maximum: 50})   # it's a method
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
	validates(:email,presence: true, length: {maximum: 255},
format: {with: VALID_EMAIL_REGEX } , uniqueness: true ,uniqueness: {case_sensitive: false} )  # a method
       has_secure_password

validates(:password, presence: true, length: {minimum: 6})

end
