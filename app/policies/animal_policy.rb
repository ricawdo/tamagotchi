class AnimalPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    return true
  end

  def new?
    return true
  end

  def create?
    return true
  end

  def edit?
    record.user == user
    return true
  end

  def update?
    return true
  end

  def destroy?
    record.user == user
    return true
  end
end
