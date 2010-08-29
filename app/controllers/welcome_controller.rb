class WelcomeController < ApplicationController

  def index
    # normally, this would come from the User model from a previous step.
    @zipcode = params[:zipcode] || "60657"
  end
  
  def redirect
    if params[:search_string].blank?
      render :text => "blank request"
    else
      # redirect_to :controller => "workplaces", :action => "show_map", :id => params[:search_string] 
      redirect_to "/map/#{params[:search_string]}"
    end
  end
end