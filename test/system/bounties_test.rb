require "application_system_test_case"

class BountiesTest < ApplicationSystemTestCase
  setup do
    @bounty = bounties(:one)
    login_as(users(:one))
  end

  test "should create bounty" do
    visit bounties_path
    click_on "New bounty"

    fill_in "Amount", with: @bounty.amount
    fill_in "Title", with: @bounty.title
    click_on "Create Bounty"

    assert_text "Bounty was successfully created"
    click_on "Back"
  end

  test "should update Bounty" do
    visit bounty_url(@bounty)
    click_on "Edit this bounty", match: :first

    fill_in "Amount", with: @bounty.amount
    fill_in "Title", with: @bounty.title
    click_on "Update Bounty"

    assert_text "Bounty was successfully updated"
    click_on "Back"
  end

  test "should destroy Bounty" do
    visit bounty_url(@bounty)
    click_on "Destroy this bounty", match: :first

    assert_text "Bounty was successfully destroyed"
  end
end
