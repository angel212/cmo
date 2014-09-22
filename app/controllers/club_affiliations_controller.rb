class ClubAffiliationsController < ApplicationController
  # GET /club_affiliations
  # GET /club_affiliations.json
  def index
    @club_affiliations = ClubAffiliation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @club_affiliations }
    end
  end

  # GET /club_affiliations/1
  # GET /club_affiliations/1.json
  def show
    @club_affiliation = ClubAffiliation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @club_affiliation }
    end
  end

  # GET /club_affiliations/new
  # GET /club_affiliations/new.json
  def new
    @club_affiliation = ClubAffiliation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @club_affiliation }
    end
  end

  # GET /club_affiliations/1/edit
  def edit
    @club_affiliation = ClubAffiliation.find(params[:id])
  end

  # POST /club_affiliations
  # POST /club_affiliations.json
  def create
    @club_affiliation = ClubAffiliation.new(params[:club_affiliation])

    respond_to do |format|
      if @club_affiliation.save
        format.html { redirect_to @club_affiliation, notice: 'Club affiliation was successfully created.' }
        format.json { render json: @club_affiliation, status: :created, location: @club_affiliation }
      else
        format.html { render action: "new" }
        format.json { render json: @club_affiliation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /club_affiliations/1
  # PUT /club_affiliations/1.json
  def update
    @club_affiliation = ClubAffiliation.find(params[:id])

    respond_to do |format|
      if @club_affiliation.update_attributes(params[:club_affiliation])
        format.html { redirect_to @club_affiliation, notice: 'Club affiliation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @club_affiliation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /club_affiliations/1
  # DELETE /club_affiliations/1.json
  def destroy
    @club_affiliation = ClubAffiliation.find(params[:id])
    @club_affiliation.destroy

    respond_to do |format|
      format.html { redirect_to club_affiliations_url }
      format.json { head :no_content }
    end
  end
end
