class Attendee
  attr_reader :height, :pass_id

  def initialize(height)
    @height = height
    # @pass_id = nil
    # Note: Don't need above line of code because Ruby gives any instance variable the default value of `nil` when it is first encountered, until it is otherwise given a value.
  end

  def issue_pass!(pass_id)
    @pass_id = pass_id
  end

  def revoke_pass!
    @pass_id = nil
  end
end