class PagesController < ApplicationController
  def home
  end

  def dashboard
    @inprogress_bookings = Booking.where(user: current_user, status: false)
    @validated_bookings = Booking.where(user: current_user, status: true)
  end
end
