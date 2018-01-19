class VisitorsController < ApplicationController
  def new
    Rails.logger.debug 'DEBUG: entering new method'
    # raise 'Deliberate Failure'

    # @owner = Owner.new
    # There is no need for this line as Flash
    # render 'visitors/new'

    # Flash allow to display a message temporarily, its a hash object in Ruby
    # We can assign other messages, such as flash[:alert] or even
    # flash[:warning]. In practice, Rails uses only :notice and :alert as flash message keys so it is
    # wise to stick with just these.
    # Assign the value to the key (flash[:key]=value), names are arbitrary but make them meaningful as follows
    # flash[:notice] = 'Welcome!'
    # flash[:alter] = 'My birthday is soon.'
    #
    # flash.each do |key, value|
    #   # Use key as the is class name and value as the value
    #   puts '<div class="' + key + '">' + value + '</div>'
    # end
    @visitor = Visitor.new
  end

  def create
    @visitor = Visitor.new(secure_params)
    if @visitor.valid?
      @visitor.subscribe
      flash[:notice] = "Signed up #{@visitor.email}."
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def secure_params
    params.require(:visitor).permit(:email)
  end
end