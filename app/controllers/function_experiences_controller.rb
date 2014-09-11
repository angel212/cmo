class FunctionExperiencesController < ApplicationController
  # GET /function_experiences
  # GET /function_experiences.json
  def index
    @function_experiences = FunctionExperience.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @function_experiences }
    end
  end

  # GET /function_experiences/1
  # GET /function_experiences/1.json
  def show
    @function_experience = FunctionExperience.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @function_experience }
    end
  end

  # GET /function_experiences/new
  # GET /function_experiences/new.json
  def new
    @function_experience = FunctionExperience.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @function_experience }
    end
  end

  # GET /function_experiences/1/edit
  def edit
    @function_experience = FunctionExperience.find(params[:id])
  end

  # POST /function_experiences
  # POST /function_experiences.json
  def create
    @function_experience = FunctionExperience.new(params[:function_experience])

    respond_to do |format|
      if @function_experience.save
        format.html { redirect_to @function_experience, notice: 'Function experience was successfully created.' }
        format.json { render json: @function_experience, status: :created, location: @function_experience }
      else
        format.html { render action: "new" }
        format.json { render json: @function_experience.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /function_experiences/1
  # PUT /function_experiences/1.json
  def update
    @function_experience = FunctionExperience.find(params[:id])

    respond_to do |format|
      if @function_experience.update_attributes(params[:function_experience])
        format.html { redirect_to @function_experience, notice: 'Function experience was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @function_experience.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /function_experiences/1
  # DELETE /function_experiences/1.json
  def destroy
    @function_experience = FunctionExperience.find(params[:id])
    @function_experience.destroy

    respond_to do |format|
      format.html { redirect_to function_experiences_url }
      format.json { head :no_content }
    end
  end
end
