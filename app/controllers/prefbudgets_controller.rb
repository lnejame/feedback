class PrefbudgetsController < ApplicationController
  # GET /prefbudgets
  # GET /prefbudgets.json
  def index
    @prefbudgets = Prefbudget.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @prefbudgets }
    end
  end

  # GET /prefbudgets/1
  # GET /prefbudgets/1.json
  def show
    @prefbudget = Prefbudget.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @prefbudget }
    end
  end

  # GET /prefbudgets/new
  # GET /prefbudgets/new.json
  def new
    @prefbudget = Prefbudget.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @prefbudget }
    end
  end

  # GET /prefbudgets/1/edit
  def edit
    @prefbudget = Prefbudget.find(params[:id])
  end

  # POST /prefbudgets
  # POST /prefbudgets.json
  def create
    @prefbudget = Prefbudget.new(params[:prefbudget])

    respond_to do |format|
      if @prefbudget.save
        format.html { redirect_to @prefbudget, notice: 'Prefbudget was successfully created.' }
        format.json { render json: @prefbudget, status: :created, location: @prefbudget }
      else
        format.html { render action: "new" }
        format.json { render json: @prefbudget.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /prefbudgets/1
  # PUT /prefbudgets/1.json
  def update
    @prefbudget = Prefbudget.find(params[:id])

    respond_to do |format|
      if @prefbudget.update_attributes(params[:prefbudget])
        format.html { redirect_to @prefbudget, notice: 'Prefbudget was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @prefbudget.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prefbudgets/1
  # DELETE /prefbudgets/1.json
  def destroy
    @prefbudget = Prefbudget.find(params[:id])
    @prefbudget.destroy

    respond_to do |format|
      format.html { redirect_to prefbudgets_url }
      format.json { head :no_content }
    end
  end
end
