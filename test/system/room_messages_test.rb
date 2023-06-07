require "application_system_test_case"

class RoomMessagesTest < ApplicationSystemTestCase
  setup do
    @room_message = room_messages(:one)
  end

  test "visiting the index" do
    visit room_messages_url
    assert_selector "h1", text: "Room messages"
  end

  test "should create room message" do
    visit room_messages_url
    click_on "New room message"

    fill_in "Message", with: @room_message.message
    fill_in "Room", with: @room_message.room_id
    fill_in "User", with: @room_message.user_id
    click_on "Create Room message"

    assert_text "Room message was successfully created"
    click_on "Back"
  end

  test "should update Room message" do
    visit room_message_url(@room_message)
    click_on "Edit this room message", match: :first

    fill_in "Message", with: @room_message.message
    fill_in "Room", with: @room_message.room_id
    fill_in "User", with: @room_message.user_id
    click_on "Update Room message"

    assert_text "Room message was successfully updated"
    click_on "Back"
  end

  test "should destroy Room message" do
    visit room_message_url(@room_message)
    click_on "Destroy this room message", match: :first

    assert_text "Room message was successfully destroyed"
  end
end
