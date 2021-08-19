class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    @inprogress_bookings = Booking.where(user: current_user, status: false)
  end
end
