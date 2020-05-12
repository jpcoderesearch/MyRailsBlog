class SkillsController < ApplicationController
  before_action :set_skill, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  respond_to :html

  def index
    @skills = Skill.all
    respond_with(@skills)
  end

  def show
    respond_with(@skill)
  end

  def new
    @skill = current_user.skills.build
    respond_with(@skill)
  end

  def edit
  end

  def create
    @skill = current_user.skills.build(skill_params)
    @skill.save
    respond_with(@skill)
  end

  def update
    @skill.update(skill_params)
    respond_with(@skill)
  end

  def destroy
    @skill.destroy
    respond_with(@skill)
  end

  private
    def set_skill
      @skill = Skill.find(params[:id])
    end

    def skill_params
      params.require(:skill).permit(:name, :version, :last_used, :project, :percentage, :expert_level, :user_id, :resume_id, :company_id)
    end
end
