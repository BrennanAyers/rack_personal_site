require './test/test_helper'

class HomepageTest < CapybaraTestCase
  def test_user_can_see_the_homepage
    visit '/knowhere'

    assert page.has_content?("Page not found.")
    assert_equal 200, page.status_code
  end
end
