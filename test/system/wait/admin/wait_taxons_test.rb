require "application_system_test_case"

class WaitTaxonsTest < ApplicationSystemTestCase
  setup do
    @wait_admin_wait_taxon = wait_admin_wait_taxons(:one)
  end

  test "visiting the index" do
    visit wait_admin_wait_taxons_url
    assert_selector "h1", text: "Wait Taxons"
  end

  test "creating a Wait taxon" do
    visit wait_admin_wait_taxons_url
    click_on "New Wait Taxon"

    fill_in "Name", with: @wait_admin_wait_taxon.name
    click_on "Create Wait taxon"

    assert_text "Wait taxon was successfully created"
    click_on "Back"
  end

  test "updating a Wait taxon" do
    visit wait_admin_wait_taxons_url
    click_on "Edit", match: :first

    fill_in "Name", with: @wait_admin_wait_taxon.name
    click_on "Update Wait taxon"

    assert_text "Wait taxon was successfully updated"
    click_on "Back"
  end

  test "destroying a Wait taxon" do
    visit wait_admin_wait_taxons_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Wait taxon was successfully destroyed"
  end
end
