class SystemPreferencesController < ApplicationController
  # GET /system_preferences
  # GET /system_preferences.json
  def index
    @system_preferences = SystemPreference.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @system_preferences }
    end
  end

  # GET /system_preferences/1
  # GET /system_preferences/1.json
  def show
    @system_preference = SystemPreference.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @system_preference }
    end
  end

  # GET /system_preferences/new
  # GET /system_preferences/new.json
  def new
    @system_preference = SystemPreference.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @system_preference }
    end
  end

  # GET /system_preferences/1/edit
  def edit
    @system_preference = SystemPreference.find(params[:id])
  end

  # POST /system_preferences
  # POST /system_preferences.json
  def create
    @system_preference = SystemPreference.new(params[:system_preference])

    respond_to do |format|
      if @system_preference.save
        format.html { redirect_to @system_preference, notice: 'System preference was successfully created.' }
        format.json { render json: @system_preference, status: :created, location: @system_preference }
      else
        format.html { render action: "new" }
        format.json { render json: @system_preference.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /system_preferences/1
  # PUT /system_preferences/1.json
  def update
    @system_preference = SystemPreference.find(params[:id])

    respond_to do |format|
      if @system_preference.update_attributes(params[:system_preference])
        format.html { redirect_to @system_preference, notice: 'System preference was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @system_preference.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /system_preferences/1
  # DELETE /system_preferences/1.json
  def destroy
    @system_preference = SystemPreference.find(params[:id])
    @system_preference.destroy

    respond_to do |format|
      format.html { redirect_to system_preferences_url }
      format.json { head :no_content }
    end
  end
end
