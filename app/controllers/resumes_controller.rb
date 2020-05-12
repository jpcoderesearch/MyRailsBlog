class ResumesController < ApplicationController
  before_action :set_resume, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show]
  respond_to :html

  def index
    @resumes = Resume.all
    respond_with(@resumes)
  end

  def show
    respond_with(@resume)
  end

  def new
    @resume = current_user.resumes.build
    respond_with(@resume)
  end

  def edit
  end

  def create
    @resume = current_user.resumes.build(resume_params)
    @resume.save
    if @resume.present? && params["resume"]["image"].present?
      @resume.pictures.present? ? @resume.pictures.delete_all : []
      @resume.pictures.create(:image => params["resume"]["image"], :image_value => "1")
    end  
    respond_with(@resume)
  end

  def update
    @resume.update(resume_params)
    if @resume.present? && params["resume"]["image"].present?
      if @resume.pictures.where(:image_value => "1").present? 
        
        @resume.pictures.where(:image_value => "1").present? ? @resume.pictures.where(:image_value => "1").delete_all : []
        @resume.pictures.create(:image => params["resume"]["image"])
      else
        @resume.pictures.create(:image => params["resume"]["image"], :image_value => "1")
      end
    end 
    respond_with(@resume)
  end

  def destroy
    @resume.destroy
    respond_with(@resume)
  end

  private
    def set_resume
      @resume = Resume.find(params[:id])
    end

    def resume_params
      params.require(:resume).permit(:name, :description)
    end
end
