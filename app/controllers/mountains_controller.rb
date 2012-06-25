class MountainsController < ApplicationController
  # GET /mountains
  # GET /mountains.json
  def index
    @mountains = Mountain.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mountains }
    end
  end

  # GET /mountains/1
  # GET /mountains/1.json
  def show
    @mountain = Mountain.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mountain }
    end
  end

  # GET /mountains/new
  # GET /mountains/new.json
  def new
    @mountain = Mountain.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mountain }
    end
  end

  # GET /mountains/1/edit
  def edit
    @mountain = Mountain.find(params[:id])
  end

  # POST /mountains
  # POST /mountains.json
  def create
    @mountain = Mountain.new(params[:mountain])

    respond_to do |format|
      if @mountain.save
        format.html { redirect_to @mountain, notice: 'Mountain was successfully created.' }
        format.json { render json: @mountain, status: :created, location: @mountain }
      else
        format.html { render action: "new" }
        format.json { render json: @mountain.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mountains/1
  # PUT /mountains/1.json
  def update
    @mountain = Mountain.find(params[:id])

    respond_to do |format|
      if @mountain.update_attributes(params[:mountain])
        format.html { redirect_to @mountain, notice: 'Mountain was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mountain.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mountains/1
  # DELETE /mountains/1.json
  def destroy
    @mountain = Mountain.find(params[:id])
    @mountain.destroy

    respond_to do |format|
      format.html { redirect_to mountains_url }
      format.json { head :no_content }
    end
  end
end
