class HostPreferencesController < ApplicationController
  # GET /host_preferences
  # GET /host_preferences.json
  def index
    @host_preferences = HostPreference.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @host_preferences }
    end
  end

  # GET /host_preferences/1
  # GET /host_preferences/1.json
  def show
    @host_preference = HostPreference.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @host_preference }
    end
  end

  # GET /host_preferences/new
  # GET /host_preferences/new.json
  def new
    @host_preference = HostPreference.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @host_preference }
    end
  end

  # GET /host_preferences/1/edit
  def edit
    @host_preference = HostPreference.find(params[:id])
  end

  # POST /host_preferences
  # POST /host_preferences.json
  def create
    @host_preference = HostPreference.new(params[:host_preference])

    respond_to do |format|
      if @host_preference.save
        format.html { redirect_to @host_preference, notice: 'Host preference was successfully created.' }
        format.json { render json: @host_preference, status: :created, location: @host_preference }
      else
        format.html { render action: "new" }
        format.json { render json: @host_preference.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /host_preferences/1
  # PUT /host_preferences/1.json
  def update
    @host_preference = HostPreference.find(params[:id])

    respond_to do |format|
      if @host_preference.update_attributes(params[:host_preference])
        format.html { redirect_to @host_preference, notice: 'Host preference was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @host_preference.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /host_preferences/1
  # DELETE /host_preferences/1.json
  def destroy
    @host_preference = HostPreference.find(params[:id])
    @host_preference.destroy

    respond_to do |format|
      format.html { redirect_to host_preferences_url }
      format.json { head :no_content }
    end
  end
end
