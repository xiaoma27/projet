require 'test_helper'

class SessionControllerTest < ActionController::TestCase
 def create
    puts request.env['omniauth.auth']
    render text: request.env['omniauth.auth'].to_yaml
  end
  # test "the truth" do
  #   assert true
  # end
end
