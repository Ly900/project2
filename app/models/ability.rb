class Ability
  # Where are you utilizing cancancan? I've never used the gem personally and am interested.
  include CanCan::Ability

  def initialize(user)
    if user
      can [:read, :create, :update, :destroy], [Student], :user => user

      can :manage, Log, :student => { :user_id => user.id }
    else
    end
  end
end
