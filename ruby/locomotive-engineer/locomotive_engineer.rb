class LocomotiveEngineer
  def self.generate_list_of_wagons(*wagon_ids)
    wagon_ids
  end

  def self.fix_list_of_wagons((penultimate, last, first, *rest), second_list)
    fixed_list = first, *second_list, *rest, penultimate, last
  end
end
