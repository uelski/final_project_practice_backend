class BandsController < ApplicationController
  def index
    @bands = Band.all
    render json: @bands, status: :ok
  end

  def new
    @band = Band.new
  end

  def create
    @band = Band.new({name: params[:name], password: params[:password], password_confirmation: params[:password_confirmation],
      website: params[:website]})
    if @band.save
      render json: @band, status: :created
    end
  end

  private
  def band_params
    params.require(:band).permit(:name, :password, :password_confirmation, :website)
  end


end
