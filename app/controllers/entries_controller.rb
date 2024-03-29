class EntriesController < ApplicationController
  before_action :set_entry, only: [:show, :edit, :update, :destroy]

  # http_basic_authenticate_with name: "dhh", password: "secret"

  # GET /entries
  # GET /entries.json
  def index
    @today_entries = Entry.where("date = ?", Date.today)
    @yesterday_entries = Entry.where("date = ?", Date.yesterday)

    @entry = Entry.new
  end

  # GET /entries/1
  # GET /entries/1.json
  def show
    @entry = Entry.find(params[:id])
    @employee = Employee.find(@entry.employee_id)
    @project = Project.find(@entry.project_id)
  end

  # GET /entries/new
  def new
    @entry = Entry.new
    @employee = Employee.new
    @project = Project.new
  end

  # GET /entries/1/edit
  def edit
    @hours = Entry.find(params[:id]).time / (60 * 60)
    @minutes = (Entry.find(params[:id]).time / 60) % 60
  end

  # POST /entries
  # POST /entries.json
  def create

    @entry = Entry.new(entry_params)

    respond_to do |format|

      if @entry.save
        format.html { redirect_to entries_path, notice: 'Entry was successfully created.' }
        format.json { render :show, status: :created, location: @entry }
      else
        @today_entries = Entry.where("date = ?", Date.today)
        @yesterday_entries = Entry.where("date = ?", Date.yesterday)
        format.html { render :action => :index }
        format.json { render json: @entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /entries/1
  # PATCH/PUT /entries/1.json
  def update
    respond_to do |format|
      if @entry.update(entry_params)
        format.html { redirect_to entries_path, notice: 'Entry was successfully updated.' }
        format.json { render :show, status: :ok, location: @entry }
      else
        format.html { render :edit }
        format.json { render json: @entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entries/1
  # DELETE /entries/1.json
  def destroy
    @entry.destroy
    respond_to do |format|
      format.html { redirect_to entries_url, notice: 'Entry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entry
      @entry = Entry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def entry_params
      params.require(:entry).permit(:name, :date, :hours, :minutes, :employee_id, :project_id, :billable)
    end

end
