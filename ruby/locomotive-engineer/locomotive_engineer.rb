class LocomotiveEngineer
  def self.generate_list_of_wagons(*wagon_ids)= wagon_ids

  def self.fix_list_of_wagons((penultimate, last, first, *rest), missing_wagons)
    [first, *missing_wagons, *rest, penultimate, last]
  end

  def self.add_missing_stops(route, **stops)
    {**route, stops: stops.values}
  end

  def self.extend_route_information(route, more_route_info)
    {**route, **more_route_info}
  end
end
