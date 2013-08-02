class TktestsController < ApplicationController
  # GET /tktests
  # GET /tktests.json
  def index
    @tktests = Tktest.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tktests }
    end
  end

  # GET /tktests/1
  # GET /tktests/1.json
  def show
    @tktest = Tktest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tktest }
    end
  end

  # GET /tktests/new
  # GET /tktests/new.json
  def new
    @tktest = Tktest.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tktest }
    end
  end

  # GET /tktests/1/edit
  def edit
    @tktest = Tktest.find(params[:id])
  end

  # POST /tktests
  # POST /tktests.json
  def create
    @tktest = Tktest.new(params[:tktest])

    respond_to do |format|
      if @tktest.save
        format.html { redirect_to @tktest, notice: 'Tktest was successfully created.' }
        format.json { render json: @tktest, status: :created, location: @tktest }
      else
        format.html { render action: "new" }
        format.json { render json: @tktest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tktests/1
  # PUT /tktests/1.json
  def update
    @tktest = Tktest.find(params[:id])

    respond_to do |format|
      if @tktest.update_attributes(params[:tktest])
        format.html { redirect_to @tktest, notice: 'Tktest was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tktest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tktests/1
  # DELETE /tktests/1.json
  def destroy
    @tktest = Tktest.find(params[:id])
    @tktest.destroy

    respond_to do |format|
      format.html { redirect_to tktests_url }
      format.json { head :no_content }
    end
  end
end
