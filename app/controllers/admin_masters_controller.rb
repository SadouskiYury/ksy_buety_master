class AdminMastersController < ApplicationController
  before_action :set_admin_master, only: %i[ show edit update destroy ]

  # GET /admin_masters or /admin_masters.json
  def index
    @admin_masters = AdminMaster.all
  end

  # GET /admin_masters/1 or /admin_masters/1.json
  def show
  end

  # GET /admin_masters/new
  def new
    @admin_master = AdminMaster.new
  end

  # GET /admin_masters/1/edit
  def edit
  end

  # POST /admin_masters or /admin_masters.json
  def create
    @admin_master = AdminMaster.new(admin_master_params)

    respond_to do |format|
      if @admin_master.save
        format.html { redirect_to admin_master_url(@admin_master), notice: "Admin master was successfully created." }
        format.json { render :show, status: :created, location: @admin_master }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @admin_master.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin_masters/1 or /admin_masters/1.json
  def update
    respond_to do |format|
      if @admin_master.update(admin_master_params)
        format.html { redirect_to admin_master_url(@admin_master), notice: "Admin master was successfully updated." }
        format.json { render :show, status: :ok, location: @admin_master }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @admin_master.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin_masters/1 or /admin_masters/1.json
  def destroy
    @admin_master.destroy

    respond_to do |format|
      format.html { redirect_to admin_masters_url, notice: "Admin master was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_master
      @admin_master = AdminMaster.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def admin_master_params
      params.require(:admin_master).permit(:id, :admin_id, :master_id, :role)
    end
end
