class SeatBookingsController < ApplicationController
  before_action :set_seat_booking, only: [:show, :edit, :update, :destroy]
  skip_before_action :adminauthorise, only: [:new, :create, :destroy]
  
  # GET /seat_bookings
  # GET /seat_bookings.json
  def index
    @seat_bookings = SeatBooking.all
  end

  # GET /seat_bookings/1
  # GET /seat_bookings/1.json
  def show
  end

  # GET /seat_bookings/new
  def new
    @seat_booking = SeatBooking.new
  end

  # GET /seat_bookings/1/edit
  def edit
  end

  # POST /seat_bookings
  # POST /seat_bookings.json
  def create
	seat = Seat.find(params[:seat_id])
	session[:screening_id] = params[:screening_id]
	@cart = current_cart
    @seat_booking = @cart.add_seat(seat.id)

    respond_to do |format|
      if @seat_booking.save
        format.html { redirect_to @cart, notice: 'Seat booking was successfully created.' }
        format.json { render :show, status: :created, location: @seat_booking }
      else
        format.html { render :new }
        format.json { render json: @seat_booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seat_bookings/1
  # PATCH/PUT /seat_bookings/1.json
  def update
    respond_to do |format|
      if @seat_booking.update(seat_booking_params)
        format.html { redirect_to @seat_booking, notice: 'Seat booking was successfully updated.' }
        format.json { render :show, status: :ok, location: @seat_booking }
      else
        format.html { render :edit }
        format.json { render json: @seat_booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seat_bookings/1
  # DELETE /seat_bookings/1.json
  def destroy
    @seat_booking.destroy
    respond_to do |format|
      format.html { redirect_to seat_bookings_url, notice: 'Seat booking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seat_booking
      @seat_booking = SeatBooking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def seat_booking_params
      params.require(:seat_booking).permit(:booking_id, :seat_id, :ticket_type, :price)
    end
end
