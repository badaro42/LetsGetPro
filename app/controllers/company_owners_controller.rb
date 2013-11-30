class CompanyOwnersController < ApplicationController
  before_action :set_company_owner, only: [:show, :edit, :update, :destroy]

  # GET /company_owners
  # GET /company_owners.json
  def index
    @company_owners = CompanyOwner.all
  end

  # GET /company_owners/1
  # GET /company_owners/1.json
  def show
  end

  # GET /company_owners/new
  def new
    @company_owner = CompanyOwner.new
  end

  # GET /company_owners/1/edit
  def edit
  end

  # POST /company_owners
  # POST /company_owners.json
  def create
    @company_owner = CompanyOwner.new(company_owner_params)

    respond_to do |format|
      if @company_owner.save
        format.html { redirect_to @company_owner, notice: 'Company owner was successfully created.' }
        format.json { render action: 'show', status: :created, location: @company_owner }
      else
        format.html { render action: 'new' }
        format.json { render json: @company_owner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /company_owners/1
  # PATCH/PUT /company_owners/1.json
  def update
    respond_to do |format|
      if @company_owner.update(company_owner_params)
        format.html { redirect_to @company_owner, notice: 'Company owner was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @company_owner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /company_owners/1
  # DELETE /company_owners/1.json
  def destroy
    @company_owner.destroy
    respond_to do |format|
      format.html { redirect_to company_owners_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company_owner
      @company_owner = CompanyOwner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def company_owner_params
      params.require(:company_owner).permit(:user_id, :company_id)
    end
end
