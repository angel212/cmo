class OtherGraduatesController < ApplicationController
  # GET /other_graduates
  # GET /other_graduates.json
  def index
    @other_graduates = OtherGraduate.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @other_graduates }
    end
  end

  # GET /other_graduates/1
  # GET /other_graduates/1.json
  def show
    @other_graduate = OtherGraduate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @other_graduate }
    end
  end

  # GET /other_graduates/new
  # GET /other_graduates/new.json
  def new
    @other_graduate = OtherGraduate.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @other_graduate }
    end
  end

  # GET /other_graduates/1/edit
  def edit
    @other_graduate = OtherGraduate.find(params[:id])
  end

  # POST /other_graduates
  # POST /other_graduates.json
  def create
    @other_graduate = OtherGraduate.new(params[:other_graduate])

    respond_to do |format|
      if @other_graduate.save
        format.html { redirect_to @other_graduate, notice: 'Other graduate was successfully created.' }
        format.json { render json: @other_graduate, status: :created, location: @other_graduate }
      else
        format.html { render action: "new" }
        format.json { render json: @other_graduate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /other_graduates/1
  # PUT /other_graduates/1.json
  def update
    @other_graduate = OtherGraduate.find(params[:id])

    respond_to do |format|
      if @other_graduate.update_attributes(params[:other_graduate])
        format.html { redirect_to @other_graduate, notice: 'Other graduate was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @other_graduate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /other_graduates/1
  # DELETE /other_graduates/1.json
  def destroy
    @other_graduate = OtherGraduate.find(params[:id])
    @other_graduate.destroy

    respond_to do |format|
      format.html { redirect_to other_graduates_url }
      format.json { head :no_content }
    end
  end
end
