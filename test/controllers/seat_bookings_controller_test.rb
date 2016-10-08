require 'test_helper'

class SeatBookingsControllerTest < ActionController::TestCase
  setup do
    @seat_booking = seat_bookings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:seat_bookings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create seat_booking" do
    assert_difference('SeatBooking.count') do
      post :create, seat_booking: { booking_id: @seat_booking.booking_id, price: @seat_booking.price, seat_id: @seat_booking.seat_id, type: @seat_booking.type }
    end

    assert_redirected_to seat_booking_path(assigns(:seat_booking))
  end

  test "should show seat_booking" do
    get :show, id: @seat_booking
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @seat_booking
    assert_response :success
  end

  test "should update seat_booking" do
    patch :update, id: @seat_booking, seat_booking: { booking_id: @seat_booking.booking_id, price: @seat_booking.price, seat_id: @seat_booking.seat_id, type: @seat_booking.type }
    assert_redirected_to seat_booking_path(assigns(:seat_booking))
  end

  test "should destroy seat_booking" do
    assert_difference('SeatBooking.count', -1) do
      delete :destroy, id: @seat_booking
    end

    assert_redirected_to seat_bookings_path
  end
end
