class WorkExperiencesController < ApplicationController
  before_filter :authenticate_user!
  # GET /work_experiences
  # GET /work_experiences.json
  def index
    @work_experiences = WorkExperience.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @work_experiences }
    end
  end

  # GET /work_experiences/1
  # GET /work_experiences/1.json
  def show
    @work_experience = WorkExperience.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @work_experience }
    end
  end

  # GET /work_experiences/new
  # GET /work_experiences/new.json
  def new
    @work_experience = WorkExperience.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @work_experience }
    end
  end

  # GET /work_experiences/1/edit
  def edit
    @work_experience = WorkExperience.find(params[:id])
  end

  # POST /work_experiences
  # POST /work_experiences.json
  def create
    @work_experience = WorkExperience.new(params[:work_experience])

    respond_to do |format|
      if @work_experience.save
        format.html { redirect_to @work_experience, notice: 'Work experience was successfully created.' }
        format.json { render json: @work_experience, status: :created, location: @work_experience }
      else
        format.html { render action: "new" }
        format.json { render json: @work_experience.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /work_experiences/1
  # PUT /work_experiences/1.json
  def update
    @work_experience = WorkExperience.find(params[:id])

    respond_to do |format|
      if @work_experience.update_attributes(params[:work_experience])
        format.html { redirect_to @work_experience, notice: 'Work experience was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @work_experience.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /work_experiences/1
  # DELETE /work_experiences/1.json
  def destroy
    @work_experience = WorkExperience.find(params[:id])
    @work_experience.destroy

    respond_to do |format|
      format.html { redirect_to work_experiences_url }
      format.json { head :no_content }
    end
  end
end
