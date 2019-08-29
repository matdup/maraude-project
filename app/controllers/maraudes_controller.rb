class MaraudesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

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
        infoWindow: render_to_string(partial: "info_window", locals: { maraude: maraude }),
        image_starts_url: helpers.asset_url('pin_starts'),
        image_ends_url: helpers.asset_url('pin_ends'),
        steps: JSON.parse(maraude.direction.first)["routes"].first["legs"].first["steps"]
      }
    end
  end

  def show
    @maraude = Maraude.find(params[:id])
    @booking = Booking.new
    @maraudes = Maraude.geocoded #returns flats with coordinates

    @markers = {
      lat_starts: @maraude.ltd_starts,
      lng_starts: @maraude.lng_starts,
      lat_ends: @maraude.ltd_ends,
      lng_ends: @maraude.lng_ends,
      infoWindow: render_to_string(partial: "info_window", locals: { maraude: @maraude }),
      image_starts_url: helpers.asset_url('pin_starts'),
      image_ends_url: helpers.asset_url('pin_ends')
    }
    direction = JSON.parse(@maraude.direction.first)
    @steps = direction["routes"].first["legs"].first["steps"]
  end

  def new
    @maraude = Maraude.new
  end

  def create
    @maraude = Maraude.new(maraude_params)
    @maraude.asso = current_user.assos.first
    @maraude.save
  end

  private

  def maraude_params
    params.require(:maraude).permit(:title, :address_start, :description, :capacity, :photo)
  end
end
