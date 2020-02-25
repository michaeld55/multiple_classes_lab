class Bus

  attr_reader :route_number, :destination, :passengers

  def initialize(route_number, destination)
    @route_number = route_number
    @destination = destination
    @passengers = []
  end

  def drive_method
    return "Brum brum"
  end

  def pick_up_passenger( passenger )

    return @passengers << passenger

  end

end
