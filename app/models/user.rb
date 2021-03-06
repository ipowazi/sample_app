class User < ActiveRecord::Base
  attr_accessor :password
  attr_accessible :email, :name, :password, :password_confirmation

  validates(:name, 	:presence => true, 
  					:length => { :maximum => 50 })

	email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

	validates(:email, :presence => true,
						:format => { :with => email_regex })

end
