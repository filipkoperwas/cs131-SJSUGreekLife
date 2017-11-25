require "application_system_test_case"

class UserSignupTest < ApplicationSystemTestCase
   test "Successful Signup" do
     user = create(:user)

     visit signin_path
     
     fill_in "Email", with: user.email
     fill_in "Password", with: "Password1"
     click_on "Sign In"

     assert_text "Welcome, #{user.first_name}"
   end

   test "Unsuccessful Signup" do
     user = create(:user)

     visit signin_path
     
     fill_in "Email", with: user.email
     fill_in "Password", with: "WRONG"
     click_on "Sign In"

     assert_text "Invalid Credentials"
   end
end
