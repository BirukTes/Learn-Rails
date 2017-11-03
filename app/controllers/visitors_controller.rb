class VisitorsController < ApplicationController
  def new
    # Rails.logger.debug 'DEBUG: entering new method'
    # raise 'Deliberate Failure'
    @owner = Owner.new
    render 'visitors/new'
  end
end