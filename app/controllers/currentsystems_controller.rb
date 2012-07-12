class CurrentsystemsController < ApplicationController
  # GET /currentsystems
  # GET /currentsystems.json
  def index
    @currentsystems = Currentsystem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @currentsystems }
    end
  end

  # GET /currentsystems/1
  # GET /currentsystems/1.json
  def show
    @currentsystem = Currentsystem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @currentsystem }
    end
  end

  # GET /currentsystems/new
  # GET /currentsystems/new.json
  def new
    @currentsystem = Currentsystem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @currentsystem }
    end
  end

  # GET /currentsystems/1/edit
  def edit
    @currentsystem = Currentsystem.find(params[:id])
  end

  # POST /currentsystems
  # POST /currentsystems.json
  def create
    @currentsystem = Currentsystem.new(params[:currentsystem])

    respond_to do |format|
      if @currentsystem.save
        format.html { redirect_to @currentsystem, notice: 'Currentsystem was successfully created.' }
        format.json { render json: @currentsystem, status: :created, location: @currentsystem }
      else
        format.html { render action: "new" }
        format.json { render json: @currentsystem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /currentsystems/1
  # PUT /currentsystems/1.json
  def update
    @currentsystem = Currentsystem.find(params[:id])

    respond_to do |format|
      if @currentsystem.update_attributes(params[:currentsystem])
        format.html { redirect_to @currentsystem, notice: 'Currentsystem was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @currentsystem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /currentsystems/1
  # DELETE /currentsystems/1.json
  def destroy
    @currentsystem = Currentsystem.find(params[:id])
    @currentsystem.destroy

    respond_to do |format|
      format.html { redirect_to currentsystems_url }
      format.json { head :no_content }
    end
  end
end
