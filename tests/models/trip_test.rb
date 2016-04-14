require_relative "../test_helper"

class TripTest < Minitest::Test

	  def test_valid_at_creation
    trip = Trip.new(name: "cruise", description: "cruise to Alaska")
    assert(trip.valid?, "Trip should be good by default")
  end

end
