class LanguageAbilitiesController < ApplicationController
  # GET /language_abilities
  # GET /language_abilities.json
  def index
    @language_abilities = LanguageAbility.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @language_abilities }
    end
  end

  # GET /language_abilities/1
  # GET /language_abilities/1.json
  def show
    @language_ability = LanguageAbility.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @language_ability }
    end
  end

  # GET /language_abilities/new
  # GET /language_abilities/new.json
  def new
    @language_ability = LanguageAbility.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @language_ability }
    end
  end

  # GET /language_abilities/1/edit
  def edit
    @language_ability = LanguageAbility.find(params[:id])
  end

  # POST /language_abilities
  # POST /language_abilities.json
  def create
    @language_ability = LanguageAbility.new(params[:language_ability])

    respond_to do |format|
      if @language_ability.save
        format.html { redirect_to @language_ability, notice: 'Language ability was successfully created.' }
        format.json { render json: @language_ability, status: :created, location: @language_ability }
      else
        format.html { render action: "new" }
        format.json { render json: @language_ability.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /language_abilities/1
  # PUT /language_abilities/1.json
  def update
    @language_ability = LanguageAbility.find(params[:id])

    respond_to do |format|
      if @language_ability.update_attributes(params[:language_ability])
        format.html { redirect_to @language_ability, notice: 'Language ability was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @language_ability.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /language_abilities/1
  # DELETE /language_abilities/1.json
  def destroy
    @language_ability = LanguageAbility.find(params[:id])
    @language_ability.destroy

    respond_to do |format|
      format.html { redirect_to language_abilities_url }
      format.json { head :no_content }
    end
  end
end
