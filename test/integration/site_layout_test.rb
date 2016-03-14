require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "layout links" do
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path, "sample app"
    assert_select "a[href=?]", root_path, "Home"
    assert_select "a[href=?]", help_path, "Help"
    assert_select "a[href=?]", about_path, "About"
    assert_select "a[href=?]", contact_path, "Contact"
  end
end
