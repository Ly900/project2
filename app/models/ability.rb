class Ability
  include CanCan::Ability

  def initialize(user)
    if user
      can [:read, :create, :update, :destroy], [Student], :user => user

      can :manage, Log, :student => { :user_id => user.id }
    else
    end
  end
end
