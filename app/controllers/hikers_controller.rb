class HikersController < ApplicationController
  # GET /hikers
  # GET /hikers.json
  def index
    @hikers = Hiker.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hikers }
    end
  end

  # GET /hikers/1
  # GET /hikers/1.json
  def show
    @hiker = Hiker.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hiker }
    end
  end

  # GET /hikers/new
  # GET /hikers/new.json
  def new
    @hiker = Hiker.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hiker }
    end
  end

  # GET /hikers/1/edit
  def edit
    @hiker = Hiker.find(params[:id])
  end

  # POST /hikers
  # POST /hikers.json
  def create
    @hiker = Hiker.new(params[:hiker])

    respond_to do |format|
      if @hiker.save
        format.html { redirect_to @hiker, notice: 'Hiker was successfully created.' }
        format.json { render json: @hiker, status: :created, location: @hiker }
      else
        format.html { render action: "new" }
        format.json { render json: @hiker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hikers/1
  # PUT /hikers/1.json
  def update
    @hiker = Hiker.find(params[:id])

    respond_to do |format|
      if @hiker.update_attributes(params[:hiker])
        format.html { redirect_to @hiker, notice: 'Hiker was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hiker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hikers/1
  # DELETE /hikers/1.json
  def destroy
    @hiker = Hiker.find(params[:id])
    @hiker.destroy

    respond_to do |format|
      format.html { redirect_to hikers_url }
      format.json { head :no_content }
    end
  end
end
