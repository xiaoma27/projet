
require 'test_helper'

class CityTest < ActiveSupport::TestCase
  
  test "valid city" do
    VCR.use_cassette("nominatim1") do
      incorrect = City.new name: cities(:one).name
      assert incorrect.valid?
    end
  end  
  


end