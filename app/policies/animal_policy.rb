class AnimalPolicy < ApplicationPolicy
  def index?
    return true
  end

  def show?
    return true
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
