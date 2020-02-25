require('minitest/autorun')
require('minitest/reporters')

require_relative('../bus')
require_relative('../person')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestBus < MiniTest::Test

  def setup
    @bus1 = Bus.new(22, "Ocean Terminal")
    @bus2 = Bus.new(47, "Granton")
    @person1 = Person.new("Michael", 29)
  end

  def test_bus_route
    assert_equal(22, @bus1.route_number)
  end

  def test_bus_destination
    assert_equal("Granton", @bus2.destination)
  end

  def test_bus_drive_method
    assert_equal("Brum brum", @bus1.drive_method)
  end

  def test_pick_up_passenger()
      @bus1.pick_up_passenger( @person1)
    assert_equal(1, @bus1.passengers().size())
  end

  def method_name

  end

end
