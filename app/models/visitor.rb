class Visitor < ActiveRecord::Base
  # has_no_table I will use sqlLite instead
  # Visitor.connection?

  attr_accessor :email, :string

  validates_presence_of :email
  validates_format_of :email, :with => /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i


  #Faraday::SSLError - SSL_connect returned=1 errno=0 state=error: certificate verify failed:

  def subscribe
    # mailchimp = Gibbon::Request.new(api_key: 'c89de8a4b155bdc9b665128591e1e122-us17')
    # list_id = '4bf4dcc763'
    result = -1;
    # result = mailchimp.lists(list_id).members.create(
    #     body: {
    #         email_address: self.email,
    #         status: 'subscribed'
    #     })
    Rails.logger.info("Subscribed #{self.email} to MailChimp") if result != -1 else Rails.logger.info("Sorry, there was an error.")
  end
end