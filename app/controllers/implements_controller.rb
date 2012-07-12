class ImplementsController < ApplicationController
  # GET /implements
  # GET /implements.json
  def index
    @implements = Implement.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @implements }
    end
  end

  # GET /implements/1
  # GET /implements/1.json
  def show
    @implement = Implement.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @implement }
    end
  end

  # GET /implements/new
  # GET /implements/new.json
  def new
    @implement = Implement.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @implement }
    end
  end

  # GET /implements/1/edit
  def edit
    @implement = Implement.find(params[:id])
  end

  # POST /implements
  # POST /implements.json
  def create
    @implement = Implement.new(params[:implement])

    respond_to do |format|
      if @implement.save
        format.html { redirect_to @implement, notice: 'Implement was successfully created.' }
        format.json { render json: @implement, status: :created, location: @implement }
      else
        format.html { render action: "new" }
        format.json { render json: @implement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /implements/1
  # PUT /implements/1.json
  def update
    @implement = Implement.find(params[:id])

    respond_to do |format|
      if @implement.update_attributes(params[:implement])
        format.html { redirect_to @implement, notice: 'Implement was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @implement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /implements/1
  # DELETE /implements/1.json
  def destroy
    @implement = Implement.find(params[:id])
    @implement.destroy

    respond_to do |format|
      format.html { redirect_to implements_url }
      format.json { head :no_content }
    end
  end
end
