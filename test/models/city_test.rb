require 'test_helper'

class CityTest < ActiveSupport::TestCase
 test "invalide city" do
   VCR.use_cassette("nominatim2") do
     incorrect = City.new name: cities(two:).name
     assert_incorrect.invalide?
   end
 end
  
 test "valide city" do
   VCR.use_cassette("nominatim1") do
     incorrect = City.new name: cities(one:).name
     assert_incorrect.valide?
   end
 end
  
test "weather forcecast" do
  VCR.use_cassette("weather")do
    weather = cities("one").weather
   
    assert weather = 'rain'
  end
end 
end