class DbTemplatesController < ApplicationController
  # GET /db_templates
  # GET /db_templates.json
  def index
    @db_templates = DbTemplate.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @db_templates }
    end
  end

  # GET /db_templates/1
  # GET /db_templates/1.json
  def show
    @db_template = DbTemplate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @db_template }
    end
  end

  # GET /db_templates/new
  # GET /db_templates/new.json
  def new
    @db_template = DbTemplate.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @db_template }
    end
  end

  # GET /db_templates/1/edit
  def edit
    @db_template = DbTemplate.find(params[:id])
  end

  # POST /db_templates
  # POST /db_templates.json
  def create
    @db_template = DbTemplate.new(params[:db_template])

    respond_to do |format|
      if @db_template.save
        format.html { redirect_to @db_template, notice: 'Db template was successfully created.' }
        format.json { render json: @db_template, status: :created, location: @db_template }
      else
        format.html { render action: "new" }
        format.json { render json: @db_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /db_templates/1
  # PUT /db_templates/1.json
  def update
    @db_template = DbTemplate.find(params[:id])

    respond_to do |format|
      if @db_template.update_attributes(params[:db_template])
        format.html { redirect_to @db_template, notice: 'Db template was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @db_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /db_templates/1
  # DELETE /db_templates/1.json
  def destroy
    @db_template = DbTemplate.find(params[:id])
    @db_template.destroy

    respond_to do |format|
      format.html { redirect_to db_templates_url }
      format.json { head :ok }
    end
  end
end
