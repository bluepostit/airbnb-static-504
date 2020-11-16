require "application_system_test_case"

class FlatsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit root_url

    assert_selector "h1", text: "Flats"
    # more testing for specific content, eg. flat name, count etc.
  end
end
