class PkPolicy < ApplicationPolicy
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

  def all_pks?
  	return true
  end

  def my_pks?
    return true
  end
  private

  def is_owner?
    user == record.user
  end
end
