class UndergraduateMajorsController < ApplicationController
  # GET /undergraduate_majors
  # GET /undergraduate_majors.json
  def index
    @undergraduate_majors = UndergraduateMajor.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @undergraduate_majors }
    end
  end

  # GET /undergraduate_majors/1
  # GET /undergraduate_majors/1.json
  def show
    @undergraduate_major = UndergraduateMajor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @undergraduate_major }
    end
  end

  # GET /undergraduate_majors/new
  # GET /undergraduate_majors/new.json
  def new
    @undergraduate_major = UndergraduateMajor.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @undergraduate_major }
    end
  end

  # GET /undergraduate_majors/1/edit
  def edit
    @undergraduate_major = UndergraduateMajor.find(params[:id])
  end

  # POST /undergraduate_majors
  # POST /undergraduate_majors.json
  def create
    @undergraduate_major = UndergraduateMajor.new(params[:undergraduate_major])

    respond_to do |format|
      if @undergraduate_major.save
        format.html { redirect_to @undergraduate_major, notice: 'Undergraduate major was successfully created.' }
        format.json { render json: @undergraduate_major, status: :created, location: @undergraduate_major }
      else
        format.html { render action: "new" }
        format.json { render json: @undergraduate_major.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /undergraduate_majors/1
  # PUT /undergraduate_majors/1.json
  def update
    @undergraduate_major = UndergraduateMajor.find(params[:id])

    respond_to do |format|
      if @undergraduate_major.update_attributes(params[:undergraduate_major])
        format.html { redirect_to @undergraduate_major, notice: 'Undergraduate major was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @undergraduate_major.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /undergraduate_majors/1
  # DELETE /undergraduate_majors/1.json
  def destroy
    @undergraduate_major = UndergraduateMajor.find(params[:id])
    @undergraduate_major.destroy

    respond_to do |format|
      format.html { redirect_to undergraduate_majors_url }
      format.json { head :no_content }
    end
  end
end
