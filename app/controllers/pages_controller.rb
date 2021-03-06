class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    @inprogress_bookings = Booking.where(user: current_user, status: false)
    @validated_bookings = Booking.where(user: current_user, status: true)
    @animals = current_user.animals
    @user = current_user
  end
end
