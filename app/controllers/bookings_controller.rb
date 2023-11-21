class BookingsController < ApplicationController
  before_action :set_booking, only: :destroy
  before_action :set_user, only: [:new, :create]

  def create
    @booking = Booking.new(booking_params)
    @booking.user = @user
    @booking.lesson = @lesson
    if @booking.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def new
    @booking = Booking.new
  end

  def edit
  end

  def my_bookings
    @bookings = Booking.where(user_id: current_user.id)
  end

  def my_classes
    @lessons = Lesson.where(user_id: current_user.id)
    @bookings = Booking.all
  end

  def destroy
    @booking.destroy
    redirect_to user_path(@booking.user), status: :see_other
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :start_time, :confirmed, :user_id, :lesson_id)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_user
    @user = User.find(params[:user_id])
  end

end
