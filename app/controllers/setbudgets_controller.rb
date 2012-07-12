class SetbudgetsController < ApplicationController
  # GET /setbudgets
  # GET /setbudgets.json
  def index
    @setbudgets = Setbudget.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @setbudgets }
    end
  end

  # GET /setbudgets/1
  # GET /setbudgets/1.json
  def show
    @setbudget = Setbudget.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @setbudget }
    end
  end

  # GET /setbudgets/new
  # GET /setbudgets/new.json
  def new
    @setbudget = Setbudget.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @setbudget }
    end
  end

  # GET /setbudgets/1/edit
  def edit
    @setbudget = Setbudget.find(params[:id])
  end

  # POST /setbudgets
  # POST /setbudgets.json
  def create
    @setbudget = Setbudget.new(params[:setbudget])

    respond_to do |format|
      if @setbudget.save
        format.html { redirect_to @setbudget, notice: 'Setbudget was successfully created.' }
        format.json { render json: @setbudget, status: :created, location: @setbudget }
      else
        format.html { render action: "new" }
        format.json { render json: @setbudget.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /setbudgets/1
  # PUT /setbudgets/1.json
  def update
    @setbudget = Setbudget.find(params[:id])

    respond_to do |format|
      if @setbudget.update_attributes(params[:setbudget])
        format.html { redirect_to @setbudget, notice: 'Setbudget was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @setbudget.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /setbudgets/1
  # DELETE /setbudgets/1.json
  def destroy
    @setbudget = Setbudget.find(params[:id])
    @setbudget.destroy

    respond_to do |format|
      format.html { redirect_to setbudgets_url }
      format.json { head :no_content }
    end
  end
end
