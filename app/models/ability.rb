class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    user ||= User.new # guess user not loggedin
    if user.admin?
      can :manage, :all
    else
      can :manage, Post, user_id: user.id
      can :read, :all
      can :manage, Users, user_id: user.id
      can :read, :all
      can :manage, Comment, user_id: user.id
      can :read, :all
    end
  end
end
