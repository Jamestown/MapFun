class IncidentsController < ApplicationController
  
  def news
    @incidents = Incident.find(:all, :conditions => ['updated_at > ?', Time.now.yesterday])
  end

  def show
    @incident = Incident.find(params[:id])
    
    respond_to do |format|
      format.html # This will automatically render the show.html.erb template
      format.xml {
        render :text => @incident.to_xml(
          :only => [:description, :latitude, :longitude, :title],
          :root => 'data')
      }
    end
  end
  
  def index
    @incidents = Incident.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { 
        render :text => @incidents.to_xml(:root => 'data')
      }
    end
  end

  # GET /incidents/new
  # GET /incidents/new.xml
  def new
    @incident = Incident.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @incident }
    end
  end

  # GET /incidents/1/edit
  def edit
    @incident = Incident.find(params[:id])
  end

  # POST /incidents
  # POST /incidents.xml
  def create
    @incident = Incident.new(params[:incident])

    respond_to do |format|
      if @incident.save
        flash[:notice] = 'Incident was successfully created.'
        format.html { redirect_to(@incident) }
        format.xml  { render :xml => @incident, :status => :created, :location => @incident }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @incident.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /incidents/1
  # PUT /incidents/1.xml
  def update
    @incident = Incident.find(params[:id])

    respond_to do |format|
      if @incident.update_attributes(params[:incident])
        flash[:notice] = 'Incident was successfully updated.'
        format.html { redirect_to(@incident) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @incident.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /incidents/1
  # DELETE /incidents/1.xml
  def destroy
    @incident = Incident.find(params[:id])
    @incident.destroy

    respond_to do |format|
      format.html { redirect_to(incidents_url) }
      format.xml  { head :ok }
    end
  end
end
