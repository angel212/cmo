class PreferenceIndustriesController < ApplicationController
  # GET /preference_industries
  # GET /preference_industries.json
  def index
    @preference_industries = PreferenceIndustry.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @preference_industries }
    end
  end

  # GET /preference_industries/1
  # GET /preference_industries/1.json
  def show
    @preference_industry = PreferenceIndustry.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @preference_industry }
    end
  end

  # GET /preference_industries/new
  # GET /preference_industries/new.json
  def new
    @preference_industry = PreferenceIndustry.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @preference_industry }
    end
  end

  # GET /preference_industries/1/edit
  def edit
    @preference_industry = PreferenceIndustry.find(params[:id])
  end

  # POST /preference_industries
  # POST /preference_industries.json
  def create
    @preference_industry = PreferenceIndustry.new(params[:preference_industry])

    respond_to do |format|
      if @preference_industry.save
        format.html { redirect_to @preference_industry, notice: 'Preference industry was successfully created.' }
        format.json { render json: @preference_industry, status: :created, location: @preference_industry }
      else
        format.html { render action: "new" }
        format.json { render json: @preference_industry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /preference_industries/1
  # PUT /preference_industries/1.json
  def update
    @preference_industry = PreferenceIndustry.find(params[:id])

    respond_to do |format|
      if @preference_industry.update_attributes(params[:preference_industry])
        format.html { redirect_to @preference_industry, notice: 'Preference industry was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @preference_industry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /preference_industries/1
  # DELETE /preference_industries/1.json
  def destroy
    @preference_industry = PreferenceIndustry.find(params[:id])
    @preference_industry.destroy

    respond_to do |format|
      format.html { redirect_to preference_industries_url }
      format.json { head :no_content }
    end
  end
end
