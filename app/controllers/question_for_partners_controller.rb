class QuestionForPartnersController < ApplicationController
  # GET /question_for_partners
  # GET /question_for_partners.xml
  def index
    @question_for_partners = QuestionForPartner.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @question_for_partners }
    end
  end

  # GET /question_for_partners/1
  # GET /question_for_partners/1.xml
  def show
    @question_for_partner = QuestionForPartner.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @question_for_partner }
    end
  end

  # GET /question_for_partners/new
  # GET /question_for_partners/new.xml
  def new
    @question_for_partner = QuestionForPartner.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @question_for_partner }
    end
  end

  # GET /question_for_partners/1/edit
  def edit
    @question_for_partner = QuestionForPartner.find(params[:id])
  end

  # POST /question_for_partners
  # POST /question_for_partners.xml
  def create
    @question_for_partner = QuestionForPartner.new(params[:question_for_partner])

    respond_to do |format|
      if @question_for_partner.save
        format.html { redirect_to(@question_for_partner, :notice => 'Question for partner was successfully created.') }
        format.xml  { render :xml => @question_for_partner, :status => :created, :location => @question_for_partner }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @question_for_partner.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /question_for_partners/1
  # PUT /question_for_partners/1.xml
  def update
    @question_for_partner = QuestionForPartner.find(params[:id])

    respond_to do |format|
      if @question_for_partner.update_attributes(params[:question_for_partner])
        format.html { redirect_to(@question_for_partner, :notice => 'Question for partner was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @question_for_partner.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /question_for_partners/1
  # DELETE /question_for_partners/1.xml
  def destroy
    @question_for_partner = QuestionForPartner.find(params[:id])
    @question_for_partner.destroy

    respond_to do |format|
      format.html { redirect_to(question_for_partners_url) }
      format.xml  { head :ok }
    end
  end
end
