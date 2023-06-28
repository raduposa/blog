require "application_system_test_case"

class ArticlsTest < ApplicationSystemTestCase
  setup do
    @articl = articls(:one)
  end

  test "visiting the index" do
    visit articls_url
    assert_selector "h1", text: "Articls"
  end

  test "should create articl" do
    visit articls_url
    click_on "New articl"

    fill_in "Description", with: @articl.description
    fill_in "Title", with: @articl.title
    click_on "Create Articl"

    assert_text "Articl was successfully created"
    click_on "Back"
  end

  test "should update Articl" do
    visit articl_url(@articl)
    click_on "Edit this articl", match: :first

    fill_in "Description", with: @articl.description
    fill_in "Title", with: @articl.title
    click_on "Update Articl"

    assert_text "Articl was successfully updated"
    click_on "Back"
  end

  test "should destroy Articl" do
    visit articl_url(@articl)
    click_on "Destroy this articl", match: :first

    assert_text "Articl was successfully destroyed"
  end
end
