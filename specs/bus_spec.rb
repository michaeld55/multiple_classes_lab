require('minitest/autorun')
require('minitest/reporters')

require_relative('../bus')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestBus < MiniTest::Test

  def setup
    @bus1 = Bus.new(22, "Ocean Terminal")
    @bus2 = Bus.new(47, "Granton")
  end

  def test_bus_route
    assert_equal(22, @bus1.route_number)
  end

  def test_bus_destination
    assert_equal("Granton", @bus2.destination)
  end

end
