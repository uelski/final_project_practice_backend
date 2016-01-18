class SessionsController < ApplicationController
  def new
  end

  def create
    band = Band.find_by_name(params[:name])
  if user && user.authenticate(params[:password])
    redirect_to root_path
  else
   render "new"
  end
  end

  def destroy
  end
end
