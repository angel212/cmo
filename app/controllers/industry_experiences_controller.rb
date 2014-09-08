class IndustryExperiencesController < ApplicationController
  # GET /industry_experiences
  # GET /industry_experiences.json
  def index
    @industry_experiences = IndustryExperience.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @industry_experiences }
    end
  end

  # GET /industry_experiences/1
  # GET /industry_experiences/1.json
  def show
    @industry_experience = IndustryExperience.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @industry_experience }
    end
  end

  # GET /industry_experiences/new
  # GET /industry_experiences/new.json
  def new
    @industry_experience = IndustryExperience.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @industry_experience }
    end
  end

  # GET /industry_experiences/1/edit
  def edit
    @industry_experience = IndustryExperience.find(params[:id])
  end

  # POST /industry_experiences
  # POST /industry_experiences.json
  def create
    @industry_experience = IndustryExperience.new(params[:industry_experience])

    respond_to do |format|
      if @industry_experience.save
        format.html { redirect_to @industry_experience, notice: 'Industry experience was successfully created.' }
        format.json { render json: @industry_experience, status: :created, location: @industry_experience }
      else
        format.html { render action: "new" }
        format.json { render json: @industry_experience.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /industry_experiences/1
  # PUT /industry_experiences/1.json
  def update
    @industry_experience = IndustryExperience.find(params[:id])

    respond_to do |format|
      if @industry_experience.update_attributes(params[:industry_experience])
        format.html { redirect_to @industry_experience, notice: 'Industry experience was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @industry_experience.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /industry_experiences/1
  # DELETE /industry_experiences/1.json
  def destroy
    @industry_experience = IndustryExperience.find(params[:id])
    @industry_experience.destroy

    respond_to do |format|
      format.html { redirect_to industry_experiences_url }
      format.json { head :no_content }
    end
  end
end
