class GeographicExperiencesController < ApplicationController
  before_filter :authenticate_user!
  # GET /geographic_experiences
  # GET /geographic_experiences.json
  def index
    @geographic_experiences = GeographicExperience.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @geographic_experiences }
    end
  end

  # GET /geographic_experiences/1
  # GET /geographic_experiences/1.json
  def show
    @geographic_experience = GeographicExperience.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @geographic_experience }
    end
  end

  # GET /geographic_experiences/new
  # GET /geographic_experiences/new.json
  def new
    @geographic_experience = GeographicExperience.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @geographic_experience }
    end
  end

  # GET /geographic_experiences/1/edit
  def edit
    @geographic_experience = GeographicExperience.find(params[:id])
  end

  # POST /geographic_experiences
  # POST /geographic_experiences.json
  def create
    @geographic_experience = GeographicExperience.new(params[:geographic_experience])

    respond_to do |format|
      if @geographic_experience.save
        format.html { redirect_to @geographic_experience, notice: 'Geographic experience was successfully created.' }
        format.json { render json: @geographic_experience, status: :created, location: @geographic_experience }
      else
        format.html { render action: "new" }
        format.json { render json: @geographic_experience.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /geographic_experiences/1
  # PUT /geographic_experiences/1.json
  def update
    @geographic_experience = GeographicExperience.find(params[:id])

    respond_to do |format|
      if @geographic_experience.update_attributes(params[:geographic_experience])
        format.html { redirect_to @geographic_experience, notice: 'Geographic experience was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @geographic_experience.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /geographic_experiences/1
  # DELETE /geographic_experiences/1.json
  def destroy
    @geographic_experience = GeographicExperience.find(params[:id])
    @geographic_experience.destroy

    respond_to do |format|
      format.html { redirect_to geographic_experiences_url }
      format.json { head :no_content }
    end
  end
end
