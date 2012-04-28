class User < ActiveRecord::Base
  #attr_accessible :email, :pw, :username
  
  # oddly, REGEX is NOT a string - causes error
  USERNAME_REGEX = /^[a-zA-Z0-9_-]{3,20}$/
  PW_REGEX = /^.{3,20}$/
  EMAIL_REGEX = /^[\S]+@[\S]+\.[\S]+$/
  
  validates_presence_of :username
  validates_uniqueness_of :username
  validates_presence_of :pw
  validates_confirmation_of :pw
  #validates_presence_of :pw_confirmation
  validates_format_of :username, :with => USERNAME_REGEX
  validates_format_of :pw, :with => PW_REGEX
  validates_format_of :email, :with => EMAIL_REGEX
end
