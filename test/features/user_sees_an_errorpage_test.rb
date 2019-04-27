require './test/test_helper'

class ErrorpageTest < CapybaraTestCase
  def test_user_can_see_the_errorpage
    visit '/knowhere'

    assert page.has_content?("Page not found.")
    assert_equal 404, page.status_code
  end
end
