class Attendee
  attr_reader :height, :pass_id

  def initialize(height)
    @height = height
  end

  def issue_pass!(pass_id)
    @pass_id = pass_id
  end
  
  def revoke_pass!
    @pass_id = nil
  end
  
  def allowed_to_ride?(height_requirement)
    has_pass? && fits_ride?(height_requirement) 
  end
  
  def has_pass?
    pass_id
    # If pass_id has a value, this will be truthy.
  end

  def fits_ride?(height_requirement)
    height >= height_requirement
  end
end
