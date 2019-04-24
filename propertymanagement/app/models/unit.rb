class Unit < ActiveRecord::Base
  belongs_to :property
  has_many :leases
  
  def get_property(id)
    Property.find(id).name.to_s()
  end
  
end
