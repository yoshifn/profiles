class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def show
    @profile = Profiles.find_by_id(params['id'])
    render 'show'
  end
  
  def create
    p = Profiles.new
    p.name = params['name']
    p.email = params['email']
    p.save
    redirect_to "/profile/#{ p.id }"
  end
end
