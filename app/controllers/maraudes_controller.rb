class MaraudesController < ApplicationController
before_action :set_maraude, only: [:show, :edit, :update, :destroy]

  def index
    @maraudess = Maraude.all
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

  def new
    @maraude = Maraude.new
  end

  def create
    @maraude = Maraude.new(maraude_params)
    @maraude.user = current_user
    if @maraude.save
    redirect_to maraude_path
    else
    render :new
    end
  end

  def edit
  end

  def update
    @maraude.update(maraude_params)
    redirect_to maraude_path
  end

  def destroy
    @maraude.destroy
    redirect_to maraudes_path
  end

  private

  def maraude_params
    params.require(:maraude).permit(:title, :description, :address, :capacity)
  end

  def set_maraude
    @maraude = Maraude.find(params[:id])
  end
end
