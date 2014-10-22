class PreferenceCriteriaController < ApplicationController
  before_filter :authenticate_user!
  # GET /preference_criteria
  # GET /preference_criteria.json
  def index
    @preference_criteria = PreferenceCriterium.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @preference_criteria }
    end
  end

  # GET /preference_criteria/1
  # GET /preference_criteria/1.json
  def show
    @preference_criterium = PreferenceCriterium.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @preference_criterium }
    end
  end

  # GET /preference_criteria/new
  # GET /preference_criteria/new.json
  def new
    @preference_criterium = PreferenceCriterium.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @preference_criterium }
    end
  end

  # GET /preference_criteria/1/edit
  def edit
    @preference_criterium = PreferenceCriterium.find(params[:id])
  end

  # POST /preference_criteria
  # POST /preference_criteria.json
  def create
    @preference_criterium = PreferenceCriterium.new(params[:preference_criterium])

    respond_to do |format|
      if @preference_criterium.save
        format.html { redirect_to @preference_criterium, notice: 'Preference criterium was successfully created.' }
        format.json { render json: @preference_criterium, status: :created, location: @preference_criterium }
      else
        format.html { render action: "new" }
        format.json { render json: @preference_criterium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /preference_criteria/1
  # PUT /preference_criteria/1.json
  def update
    @preference_criterium = PreferenceCriterium.find(params[:id])

    respond_to do |format|
      if @preference_criterium.update_attributes(params[:preference_criterium])
        format.html { redirect_to @preference_criterium, notice: 'Preference criterium was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @preference_criterium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /preference_criteria/1
  # DELETE /preference_criteria/1.json
  def destroy
    @preference_criterium = PreferenceCriterium.find(params[:id])
    @preference_criterium.destroy

    respond_to do |format|
      format.html { redirect_to preference_criteria_url }
      format.json { head :no_content }
    end
  end
end
