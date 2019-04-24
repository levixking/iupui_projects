class Ability
  
  include CanCan::Ability
  
  def initialize(thisuser)
    
    thisuser ||= User.new
    # Managers
    if thisuser.has_role? :manager
      can :manage, :all
      can :index, Property
    # Renters
    elsif thisuser.has_role? :renter
      can :index, :all
      can :manage, thisuser
      cannot :create, Property
      cannot :create, Unit
      cannot :create, Lease
      cannot :update, Property
      cannot :update, Unit
      cannot :update, Lease
      cannot :destroy, Property
      cannot :destroy, Unit
      cannot :destroy, Lease
    # People who have not registered.
    else
      can :index, :all
      can :create, User
      cannot :index, RepairRequest
      cannot :index, Property
      cannot :index, Unit
      cannot :index, Lease
      cannot :create, RepairRequest
      cannot :create, Property
      cannot :create, Unit
      cannot :create, Lease
      cannot :update, RepairRequest
      cannot :update, Property
      cannot :update, Unit
      cannot :update, Lease
      cannot :destroy, RepairRequest
      cannot :destroy, Property
      cannot :destroy, Unit
      cannot :destroy, Lease
    end
  end
  
end