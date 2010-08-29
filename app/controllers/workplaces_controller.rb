class WorkplacesController < ApplicationController
  # GET /workplaces
  # GET /workplaces.xml
  def index
    @workplaces = Workplace.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @workplaces }
    end
  end

  # GET /workplaces/1
  # GET /workplaces/1.xml
  def show
    @workplace = Workplace.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @workplace }
    end
  end

  # GET /workplaces/new
  # GET /workplaces/new.xml
  def new
    @workplace = Workplace.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @workplace }
    end
  end

  # GET /workplaces/1/edit
  def edit
    @workplace = Workplace.find(params[:id])
  end

  # POST /workplaces
  # POST /workplaces.xml
  def create
    @workplace = Workplace.new(params[:workplace])

    respond_to do |format|
      if @workplace.save
        format.html { redirect_to(@workplace, :notice => 'Workplace was successfully created.') }
        format.xml  { render :xml => @workplace, :status => :created, :location => @workplace }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @workplace.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /workplaces/1
  # PUT /workplaces/1.xml
  def update
    @workplace = Workplace.find(params[:id])

    respond_to do |format|
      if @workplace.update_attributes(params[:workplace])
        format.html { redirect_to(@workplace, :notice => 'Workplace was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @workplace.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /workplaces/1
  # DELETE /workplaces/1.xml
  def destroy
    @workplace = Workplace.find(params[:id])
    @workplace.destroy

    respond_to do |format|
      format.html { redirect_to(workplaces_url) }
      format.xml  { head :ok }
    end
  end
end
