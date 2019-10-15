require "test_helper"

class RandomLocationTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::RandomLocation::VERSION
  end

  def test_it_should_return_kml_valid_location
    location = RandomLocation.at({lat: 46.77, lng: 2.834}, 1000, 'test/poly/france-hexa.kml')
    assert location.is_a? Array
    assert_equal 2, location.size
    location.each{ |lt| assert lt.is_a? Float }
  end

  def test_it_should_return_location
    location = RandomLocation.at({lat: 46.77, lng: 2.834}, 1000)
    assert location.is_a? Array
    assert_equal 2, location.size
    location.each{ |lt| assert lt.is_a? Float }
  end
end
