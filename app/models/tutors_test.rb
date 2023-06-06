require "application_system_test_case"

class TutorsTest < ApplicationSystemTestCase
  setup do
    @tutor = tutors(:one)
  end

  test "visiting the index" do
    visit tutors_url
    assert_selector "h1", text: "tutors"
  end

  test "should create tutor" do
    visit tutors_url
    click_on "New tutor"

    fill_in "Email", with: @tutor.email
    fill_in "First name", with: @tutor.first_name
    fill_in "Last name", with: @tutor.last_name
    fill_in "Phone", with: @tutor.phone
    fill_in "Birthday date", with: @tutor.birthday_date
    fill_in "School name", with: @tutor.school_name
  
    click_on "Create tutor"

    assert_text "tutor was successfully created"
    click_on "Back"
  end

  test "should update tutor" do
    visit tutor_url(@tutor)
    click_on "Edit this tutor", match: :first

    fill_in "Email", with: @tutor.email
    fill_in "First name", with: @tutor.first_name
    fill_in "Last name", with: @tutor.last_name
    fill_in "Phone", with: @tutor.phone
    fill_in "Birthday date", with: @tutor.birthday_date
    fill_in "School name", with: @tutor.school_name
    click_on "Update tutor"

    assert_text "tutor was successfully updated"
    click_on "Back"
  end

  test "should destroy tutor" do
    visit tutor_url(@tutor)
    click_on "Destroy this tutor", match: :first

    assert_text "tutor was successfully destroyed"
  end
end
