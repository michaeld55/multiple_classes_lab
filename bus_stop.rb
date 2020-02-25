class BusStop

  attr_reader( :queue )
  def initialize()

      @queue = []

  end

  def add_person_to_stop( person )

    @queue << person

  end

  

end
