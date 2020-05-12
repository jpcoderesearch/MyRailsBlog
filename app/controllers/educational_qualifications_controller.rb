class EducationalQualificationsController < ApplicationController
  before_action :set_educational_qualification, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  respond_to :html

  def index
    @educational_qualifications = EducationalQualification.all
    respond_with(@educational_qualifications)
  end

  def show
    respond_with(@educational_qualification)
  end

  def new
    @educational_qualification = current_user.educational_qualifications.build
    respond_with(@educational_qualification)
  end

  def edit
  end

  def create
    @educational_qualification = current_user.educational_qualifications.build(educational_qualification_params)
    @educational_qualification.save
    respond_with(@educational_qualification)
  end

  def update
    @educational_qualification.update(educational_qualification_params)
    respond_with(@educational_qualification)
  end

  def destroy
    @educational_qualification.destroy
    respond_with(@educational_qualification)
  end

  private
    def set_educational_qualification
      @educational_qualification = EducationalQualification.find(params[:id])
    end

    def educational_qualification_params
      params.require(:educational_qualification).permit(:college, :course, :subject, :start_date, :end_date, :percentage, :user_id, :resume_id, :city, :state, :country, :rollnumber)
    end
end
