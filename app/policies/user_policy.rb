class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    return true
  end

  def create?
    return true
  end

  def show?
    return true
  end

  def edit?
  	is_owner?
  end

  def update?
  	is_owner?
  end

  private

  def is_owner?
    user == record
  end
end
