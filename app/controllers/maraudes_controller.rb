class MaraudesController < ApplicationController
before_action :set_maraude, only: [:show]

  def index
    @maraudes = Maraude.all
  end

  def show
    @booking = Booking.new
    @maraudes = Maraude.geocoded #returns flats with coordinates

    @markers = @maraudes.map do |maraude|
      {
        lat: maraude.latitude,
        lng: maraude.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { maraude: maraude })
      }
    end
  end

  private

  def set_maraude
    @maraude = Maraude.find(params[:id])
  end
end
