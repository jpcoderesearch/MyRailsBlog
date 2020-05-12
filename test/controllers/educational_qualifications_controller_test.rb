require 'test_helper'

class EducationalQualificationsControllerTest < ActionController::TestCase
  setup do
    @educational_qualification = educational_qualifications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:educational_qualifications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create educational_qualification" do
    assert_difference('EducationalQualification.count') do
      post :create, educational_qualification: { city: @educational_qualification.city, college: @educational_qualification.college, country: @educational_qualification.country, course: @educational_qualification.course, end_date: @educational_qualification.end_date, percentage: @educational_qualification.percentage, resume_id: @educational_qualification.resume_id, rollnumber: @educational_qualification.rollnumber, start_date: @educational_qualification.start_date, state: @educational_qualification.state, subject: @educational_qualification.subject, user_id: @educational_qualification.user_id }
    end

    assert_redirected_to educational_qualification_path(assigns(:educational_qualification))
  end

  test "should show educational_qualification" do
    get :show, id: @educational_qualification
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @educational_qualification
    assert_response :success
  end

  test "should update educational_qualification" do
    patch :update, id: @educational_qualification, educational_qualification: { city: @educational_qualification.city, college: @educational_qualification.college, country: @educational_qualification.country, course: @educational_qualification.course, end_date: @educational_qualification.end_date, percentage: @educational_qualification.percentage, resume_id: @educational_qualification.resume_id, rollnumber: @educational_qualification.rollnumber, start_date: @educational_qualification.start_date, state: @educational_qualification.state, subject: @educational_qualification.subject, user_id: @educational_qualification.user_id }
    assert_redirected_to educational_qualification_path(assigns(:educational_qualification))
  end

  test "should destroy educational_qualification" do
    assert_difference('EducationalQualification.count', -1) do
      delete :destroy, id: @educational_qualification
    end

    assert_redirected_to educational_qualifications_path
  end
end
