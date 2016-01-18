class VenuesController < ApplicationController
  def index
      @venues = Venue.all
      render json: @venues, status: :ok
  end

  def show
      @venue = Venue.find(params[:id])
      render json: @venue
  end

  def create
      @venue = Venue.new({name: params[:name], address: params[:address], website: params[:website]})

      if @venue.save
          render json: @venue, status: :created
      else
          render json: @venue.errors, status: :unprocessable_entity
      end
  end

  def update
      @venue = Venue.find(params[:id])
      if @venue.update({name: params[:name], address: params[:address], website: params[:website]})
          head :no_content
      else
          render json: @venue.errors, status: :unprocessable_entity
      end
  end

  def destroy
    @venue = Venue.find(params[:id])
      @venue.destroy

      head :no_content
  end

end
