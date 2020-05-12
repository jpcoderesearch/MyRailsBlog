class ExperiencesController < ApplicationController
  before_action :set_experience, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  respond_to :html

  def index
    @experiences = Experience.all
    respond_with(@experiences)
  end

  def show
    respond_with(@experience)
  end

  def new
    @experience = current_user.experiences.build
    respond_with(@experience)
  end

  def edit
  end

  def create
    @experience = current_user.experiences.build(experience_params)
    @experience.save
    respond_with(@experience)
  end

  def update
    @experience.update(experience_params)
    respond_with(@experience)
  end

  def destroy
    @experience.destroy
    respond_with(@experience)
  end

  private
    def set_experience
      @experience = Experience.find(params[:id])
    end

    def experience_params
      params.require(:experience).permit(:role, :company, :start_date, :end_date, :description, :projects, :user_id, :resume_id, :present)
    end
end
