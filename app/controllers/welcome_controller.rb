class WelcomeController < ApplicationController

  def index
    # normally, this would come from the User model from a previous step.
    @zipcode = params[:zipcode] || "60657"
  end
end