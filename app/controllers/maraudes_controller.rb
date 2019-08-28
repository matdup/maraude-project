class MaraudesController < ApplicationController

  def index
    @maraudes = Maraude.all
  end

  def new
    @maraude = Maraude.new
  end

  def create
    @maraude = Maraude.new(maraude_params)
    @maraude.asso = current_user.assos.first
    @maraude.save


  end

  # def index
  #   if params[:query].present?
  #     @maraudes = Maraude.where(address: params[:query])
  #   else
  #     @maraudes = Maraude.all
  #   end

  #   @maraudes = Maraude.geocoded
  #   @markers = @maraudes.map do |maraude|
  #     {
  #       lat: maraude.ltd_starts,
  #       lng: maraude.lng_starts,
  #       infoWindow: render_to_string(partial: "info_window", locals: { maraude: maraude })
  #     }
  #   end
  # end

  def show
    @maraude = Maraude.find(params[:id])
    @booking = Booking.new
    @maraudes = Maraude.geocoded #returns flats with coordinates

    @markers = {
        lat: @maraude.ltd_starts,
        lng: @maraude.lng_starts,
        infoWindow: render_to_string(partial: "info_window", locals: { maraude: @maraude })
      }
  end

  private

  def maraude_params
    params.require(:maraude).permit(:title, :address_start, :description, :capacity, :photo)
  end

end
