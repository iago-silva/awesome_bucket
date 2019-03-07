require "application_system_test_case"

class BucketsTest < ApplicationSystemTestCase
  setup do
    @bucket = buckets(:one)
  end

  test "visiting the index" do
    visit buckets_url
    assert_selector "h1", text: "Buckets"
  end

  test "creating a Bucket" do
    visit buckets_url
    click_on "New Bucket"

    fill_in "Name", with: @bucket.name
    click_on "Create Bucket"

    assert_text "Bucket was successfully created"
    click_on "Back"
  end

  test "updating a Bucket" do
    visit buckets_url
    click_on "Edit", match: :first

    fill_in "Name", with: @bucket.name
    click_on "Update Bucket"

    assert_text "Bucket was successfully updated"
    click_on "Back"
  end

  test "destroying a Bucket" do
    visit buckets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bucket was successfully destroyed"
  end
end
