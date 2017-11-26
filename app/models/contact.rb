# class Contact < ActiveRecord::Base
#     # ActiveRecord gives us validation methods named validates_presence_of , validates_format_of ,
#     # and validates_length_of.
#     # has_no_table
class Contact
  include ActiveModel::Model
  attr_accessor :name, :string
  attr_accessor :email, :string
  attr_accessor :content, :string

  validates_presence_of :name
  validates_presence_of :email
  validates_presence_of :content
  validates_format_of :email, :with => /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i
  validates_length_of :content, :maximum => 500
end