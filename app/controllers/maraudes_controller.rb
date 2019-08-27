class MaraudesController < ApplicationController

  def index
    @maraudes = Maraude.all
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

    @markers = @maraudes.map do |maraude|
      {
        lat: maraude.ltd_starts,
        lng: maraude.lng_starts,
        infoWindow: render_to_string(partial: "info_window", locals: { maraude: maraude })
      }
    end
  end

end
