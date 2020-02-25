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

  def current_passenger_count()

    return @passengers.size()

  end

  def pick_up_passenger( passenger )

    return @passengers << passenger

  end

  def drop_off_passenger( passenger )

    @passengers.delete( passenger )

  end

  def empty_bus()

    @passengers = []

  end

end
