class ContactsController < ApplicationController
# Rails does all the work of extracting the form data from the browser’s POST request. Rails
# creates a hash with the form field data mapped to the form field labels and gives the hash the name of the form.
# params = {controller: 'contacts',
# action: 'process_form',
# contact: {name: 'Daniel', email: 'daniel@danielkehoe.com', content: 'hi!'}
# }
# The params hash includes these elements (plus others we won’t cover):
# • current controller
# • current action
# • form data (our contact hash)

#   We’ve dropped the “old school” process_form method and added the “Rails way” new and
#       create methods.
#   def process_form
#     # We use a logger.debug method to reveal the form data in our console log by revealing the
#     # contents of the params hash.
#     Rails.logger.debug "DEBUG: params are #{params}"
#     #We can retrieve the value of the name field with the expression params[:contact][:name] .
#     flash[:notice] = "Received request from #{params[:contact][:name]}"
#
#     # Directive to render the home page
#     redirect_to root_path
#   end

  def new
    # The controller new action will instantiate an empty Contact model, assign it to the @contact
    # instance variable, and render the app/views/contacts/new.html.erb view.
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(secure_params)
    # Make sure that data is valid
    if @contact.valid?
      # TODO save data @contact.update_spreadsheet, not functional

      UserMailer.contact_email(@contact).deliver

      # There is no need to dig into to params no we can access directly from the model
      flash[:notice] = "Message sent from #{@contact.name}."
      redirect_to root_path
    else
      render :new
    end
  end

  private # Modifier
  def secure_params
    params.require(:contact).permit(:name, :email, :content)
  end
# Rails protects us from a class of security exploits called “mass-assignment vulnerabilities.”
# Rails won’t let us initialize a model with just any parameters submitted on a form. Suppose
# we were creating a new user and one of the user attributes was a flag allowing administrator
# access. A malicious hacker could create a fake form that provides a user name and sets the
# administrator status to “true.” Rails forces us to “white list” each of the parameters used to
# initialize the model.
#     We create a method named secure_params to screen the parameters sent from the browser.
#     The params hash contains two useful methods we use for our screening:
#   • require(:contact) – makes sure that params[:contact] is present
#   • permit(:name, :email, :content) – our “white list”
end