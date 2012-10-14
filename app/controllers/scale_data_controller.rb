class ScaleDataController < ApplicationController
  # GET /scale_data
  # GET /scale_data.xml
  def index
    @scale_data = ScaleDatum.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @scale_data }
    end
  end

  # GET /scale_data/1
  # GET /scale_data/1.xml
  def show
    @scale_datum = ScaleDatum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @scale_datum }
    end
  end

  # GET /scale_data/new
  # GET /scale_data/new.xml
  def new
    @scale_datum = ScaleDatum.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @scale_datum }
    end
  end

  # GET /scale_data/1/edit
  def edit
    @scale_datum = ScaleDatum.find(params[:id])
  end

  # POST /scale_data
  # POST /scale_data.xml
  def create
    @scale_datum = ScaleDatum.new(params[:scale_datum])

    respond_to do |format|
      if @scale_datum.save
        format.html { redirect_to(@scale_datum, :notice => 'Scale datum was successfully created.') }
        format.xml  { render :xml => @scale_datum, :status => :created, :location => @scale_datum }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @scale_datum.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /scale_data/1
  # PUT /scale_data/1.xml
  def update
    @scale_datum = ScaleDatum.find(params[:id])

    respond_to do |format|
      if @scale_datum.update_attributes(params[:scale_datum])
        format.html { redirect_to(@scale_datum, :notice => 'Scale datum was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @scale_datum.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /scale_data/1
  # DELETE /scale_data/1.xml
  def destroy
    @scale_datum = ScaleDatum.find(params[:id])
    @scale_datum.destroy

    respond_to do |format|
      format.html { redirect_to(scale_data_url) }
      format.xml  { head :ok }
    end
  end
end
