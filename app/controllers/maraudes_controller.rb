class MaraudesController < ApplicationController

  def index
    if params[:query].present?
      @maraudes = Maraude.where(address: params[:query])
    else
      @maraudes = Maraude.all
    end

    @maraudes = Maraude.geocoded
    @markers = @maraudes.map do |maraude|
      {
        lat_starts: maraude.ltd_starts,
        lng_starts: maraude.lng_starts,
        lat_ends: maraude.ltd_ends,
        lng_ends: maraude.lng_ends,
        infoWindow: render_to_string(partial: "info_window", locals: { maraude: maraude })
      }
    end
  end

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

