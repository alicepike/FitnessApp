require_relative '../test_helper'

class UserTest < ActiveSupport::TestCase
   test "can't have a short name" do
    user = User.new(username: "Alice")
    refute user.valid?, "Should be fine"
   end

   test "username must start with a capital letter" do
   	user = User.new(username: "daniel")
   	refute user.valid?
   	assert_includes user.errors, :username 
   end
end

