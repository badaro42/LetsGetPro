class CvEntriesController < ApplicationController
  before_action :set_cv_entry, only: [:show, :edit, :update, :destroy]

  # GET /cv_entries
  # GET /cv_entries.json
  def index
    @cv_entries = CvEntry.all
  end

  # GET /cv_entries/1
  # GET /cv_entries/1.json
  def show
  end

  # GET /cv_entries/new
  def new
    @cv_entry = CvEntry.new
  end

  # GET /cv_entries/1/edit
  def edit
  end

  # POST /cv_entries
  # POST /cv_entries.json
  def create
    @cv_entry = CvEntry.new(cv_entry_params)
    @cv_entry.user_id = current_user.id

    respond_to do |format|
      if @cv_entry.save
        format.html { redirect_to @cv_entry, notice: 'Cv entry was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cv_entry }
      else
        format.html { render action: 'new' }
        format.json { render json: @cv_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cv_entries/1
  # PATCH/PUT /cv_entries/1.json
  def update
    respond_to do |format|
      if @cv_entry.update(cv_entry_params)
        format.html { redirect_to @cv_entry, notice: 'Cv entry was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cv_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cv_entries/1
  # DELETE /cv_entries/1.json
  def destroy
    @cv_entry.destroy
    respond_to do |format|
      format.html { redirect_to cv_entries_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cv_entry
      @cv_entry = CvEntry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cv_entry_params
      params.require(:cv_entry).permit(:company_id, :start_date, :end_date)
    end

end
