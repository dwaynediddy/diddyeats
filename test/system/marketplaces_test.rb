require "application_system_test_case"

class MarketplacesTest < ApplicationSystemTestCase
  setup do
    @marketplace = marketplaces(:one)
  end

  test "visiting the index" do
    visit marketplaces_url
    assert_selector "h1", text: "Marketplaces"
  end

  test "creating a Marketplace" do
    visit marketplaces_url
    click_on "New Marketplace"

    fill_in "Patron", with: @marketplace.patron_id
    click_on "Create Marketplace"

    assert_text "Marketplace was successfully created"
    click_on "Back"
  end

  test "updating a Marketplace" do
    visit marketplaces_url
    click_on "Edit", match: :first

    fill_in "Patron", with: @marketplace.patron_id
    click_on "Update Marketplace"

    assert_text "Marketplace was successfully updated"
    click_on "Back"
  end

  test "destroying a Marketplace" do
    visit marketplaces_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Marketplace was successfully destroyed"
  end
end
