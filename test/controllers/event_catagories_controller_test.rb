require 'test_helper'

class EventCatagoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event_catagory = event_catagories(:one)
  end

  test "should get index" do
    get event_catagories_url
    assert_response :success
  end

  test "should get new" do
    get new_event_catagory_url
    assert_response :success
  end

  test "should create event_catagory" do
    assert_difference('EventCatagory.count') do
      post event_catagories_url, params: { event_catagory: { catagory_id: @event_catagory.catagory_id, event_id: @event_catagory.event_id } }
    end

    assert_redirected_to event_catagory_url(EventCatagory.last)
  end

  test "should show event_catagory" do
    get event_catagory_url(@event_catagory)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_catagory_url(@event_catagory)
    assert_response :success
  end

  test "should update event_catagory" do
    patch event_catagory_url(@event_catagory), params: { event_catagory: { catagory_id: @event_catagory.catagory_id, event_id: @event_catagory.event_id } }
    assert_redirected_to event_catagory_url(@event_catagory)
  end

  test "should destroy event_catagory" do
    assert_difference('EventCatagory.count', -1) do
      delete event_catagory_url(@event_catagory)
    end

    assert_redirected_to event_catagories_url
  end
end
