class MaraudesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present?
      @maraudes = Maraude.near(params[:query], 0.5)
      actual_position = params[:query]
      @markers_actual_position = {
        lat: Geocoder.search("#{actual_position}").first.data["lat"],
        lng: Geocoder.search("#{actual_position}").first.data["lon"],
        # infoWindow: render_to_string(partial: "info_window", locals: { maraude: maraude })
      }
    else
      @maraudes = Maraude.geocoded
    end

    @markers = @maraudes.map do |maraude|
      {
        lat_starts: maraude.ltd_starts,
        lng_starts: maraude.lng_starts,
        lat_ends: maraude.ltd_ends,
        lng_ends: maraude.lng_ends,
        infoWindow: render_to_string(partial: "info_window", locals: { maraude: maraude }),
        image_starts_url: helpers.asset_url('pin_starts'),
        image_ends_url: helpers.asset_url('pin_ends'),
        steps: maraude.direction["routes"].first["legs"].first["steps"],
        maraude_id: maraude.id
      }
    end
  end

  def show
    @maraude = Maraude.find(params[:id])
    @booking = Booking.new
    @maraudes = Maraude.geocoded #returns flats with coordinates
    @remaining_places = @maraude.capacity.to_i - @maraude.bookings.size
    @markers = {
      lat_starts: @maraude.ltd_starts,
      lng_starts: @maraude.lng_starts,
      lat_ends: @maraude.ltd_ends,
      lng_ends: @maraude.lng_ends,
      infoWindow: render_to_string(partial: "info_window", locals: { maraude: @maraude }),
      image_starts_url: helpers.asset_url('pin_starts'),
      image_ends_url: helpers.asset_url('pin_ends')
    }
    direction = @maraude.direction
    @steps = direction["routes"].first["legs"].first["steps"]
  end

  def new
    @maraude = Maraude.new
  end

  def create
    @maraude = Maraude.new(maraude_params)
    @maraude.asso = current_user.assos.first
    if @maraude.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  private

  def maraude_params
    params.require(:maraude).permit(:title, :address_start, :description, :capacity, :photo, :address_end, :starts_at, :ends_at)
  end
end
