class EducationSchoolsController < ApplicationController
  # GET /education_schools
  # GET /education_schools.json
  def index
    @education_schools = EducationSchool.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @education_schools }
    end
  end

  # GET /education_schools/1
  # GET /education_schools/1.json
  def show
    @education_school = EducationSchool.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @education_school }
    end
  end

  # GET /education_schools/new
  # GET /education_schools/new.json
  def new
    @education_school = EducationSchool.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @education_school }
    end
  end

  # GET /education_schools/1/edit
  def edit
    @education_school = EducationSchool.find(params[:id])
  end

  # POST /education_schools
  # POST /education_schools.json
  def create
    @education_school = EducationSchool.new(params[:education_school])

    respond_to do |format|
      if @education_school.save
        format.html { redirect_to @education_school, notice: 'Education school was successfully created.' }
        format.json { render json: @education_school, status: :created, location: @education_school }
      else
        format.html { render action: "new" }
        format.json { render json: @education_school.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /education_schools/1
  # PUT /education_schools/1.json
  def update
    @education_school = EducationSchool.find(params[:id])

    respond_to do |format|
      if @education_school.update_attributes(params[:education_school])
        format.html { redirect_to @education_school, notice: 'Education school was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @education_school.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /education_schools/1
  # DELETE /education_schools/1.json
  def destroy
    @education_school = EducationSchool.find(params[:id])
    @education_school.destroy

    respond_to do |format|
      format.html { redirect_to education_schools_url }
      format.json { head :no_content }
    end
  end
end
