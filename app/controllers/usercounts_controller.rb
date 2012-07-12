class UsercountsController < ApplicationController
  # GET /usercounts
  # GET /usercounts.json
  def index
    @usercounts = Usercount.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @usercounts }
    end
  end

  # GET /usercounts/1
  # GET /usercounts/1.json
  def show
    @usercount = Usercount.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @usercount }
    end
  end

  # GET /usercounts/new
  # GET /usercounts/new.json
  def new
    @usercount = Usercount.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @usercount }
    end
  end

  # GET /usercounts/1/edit
  def edit
    @usercount = Usercount.find(params[:id])
  end

  # POST /usercounts
  # POST /usercounts.json
  def create
    @usercount = Usercount.new(params[:usercount])

    respond_to do |format|
      if @usercount.save
        format.html { redirect_to @usercount, notice: 'Usercount was successfully created.' }
        format.json { render json: @usercount, status: :created, location: @usercount }
      else
        format.html { render action: "new" }
        format.json { render json: @usercount.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /usercounts/1
  # PUT /usercounts/1.json
  def update
    @usercount = Usercount.find(params[:id])

    respond_to do |format|
      if @usercount.update_attributes(params[:usercount])
        format.html { redirect_to @usercount, notice: 'Usercount was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @usercount.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usercounts/1
  # DELETE /usercounts/1.json
  def destroy
    @usercount = Usercount.find(params[:id])
    @usercount.destroy

    respond_to do |format|
      format.html { redirect_to usercounts_url }
      format.json { head :no_content }
    end
  end
end
