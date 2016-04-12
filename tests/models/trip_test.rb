require_relative "test_helper"

class TripTest < Minitest::Test

  def test_valid_under_normal_circumstances
    trip = Trip.new(name: "cruise", description: "cruise to Barbados")
    assert(trip.valid?, "trip should be good by default")
  end
end