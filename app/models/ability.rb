# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.has_role?(:user, user.account || Account.new)
      can %i[me password update_me update_password standups], User
      can %i[feed mine], ActivityController
      can %i[index show standups]
      cannot :manage, Account
    elsif user.has_role?(:admin, user.account || Account.new)
      can :manage, :all
    else
      can %i[new create], Account
    end
  end
end
