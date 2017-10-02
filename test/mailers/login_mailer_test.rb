require 'test_helper'

class LoginMailerTest < ActionMailer::TestCase
  test "login_successfully" do
    mail = LoginMailer.login_successfully
    assert_equal "Login successfully", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
