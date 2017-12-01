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

  def update_spreadsheet
    connection = GoogleDrive.login(ENV["GMAIL_USERNAME"], ENV["GMAIL_PASSWORD"])
    ss = connection.spreadsheet_by_title('Learn-Rails-Example')
    # We look for a spreadsheet named “Learn-Rails-Example.” The first time we attempt to save
    # data, the spreadsheet will not exist, so we use the create_spreadsheet method to create it. If it
    # already exists, the spreadsheet_by_title method will find it.
    if ss.nil?
      ss = connection.create_spreadsheet('Learn-Rails-Example')
    end
    ws = ss.worksheets[0]
    last_row = 1 + ws.num_rows
    ws[last_row, 1] = Time.new
    ws[last_row, 2] = self.name
    ws[last_row, 3] = self.email
    ws[last_row, 4] = self.content
    ws.save
  end
end