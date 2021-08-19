class BookingPolicy < ApplicationPolicy

  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def create?
    true
  end

  def new?
    create?
  end

  def update?
    @record.user == @user
    return true
  end

  def validate_booking?
    return true
  end
  
  def edit?
    update?
  end

  def destroy?
    @record.user == @user
  end
end
