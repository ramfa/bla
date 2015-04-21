class MedicinsController < ApplicationController
  before_action :set_medicin, only: [:show, :edit, :update, :destroy]

  # GET /medicins
  # GET /medicins.json
  def index
    @medicins = Medicin.all
  end

  # GET /medicins/1
  # GET /medicins/1.json
  def show
  end

  # GET /medicins/new
  def new
    @medicin = Medicin.new
  end

  # GET /medicins/1/edit
  def edit
  end

  # POST /medicins
  # POST /medicins.json
  def create
    @medicin = Medicin.new(medicin_params)

    respond_to do |format|
      if @medicin.save
        format.html { redirect_to @medicin, notice: 'Medicin was successfully created.' }
        format.json { render :show, status: :created, location: @medicin }
      else
        format.html { render :new }
        format.json { render json: @medicin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medicins/1
  # PATCH/PUT /medicins/1.json
  def update
    respond_to do |format|
      if @medicin.update(medicin_params)
        format.html { redirect_to @medicin, notice: 'Medicin was successfully updated.' }
        format.json { render :show, status: :ok, location: @medicin }
      else
        format.html { render :edit }
        format.json { render json: @medicin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medicins/1
  # DELETE /medicins/1.json
  def destroy
    @medicin.destroy
    respond_to do |format|
      format.html { redirect_to medicins_url, notice: 'Medicin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medicin
      @medicin = Medicin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def medicin_params
      params.require(:medicin).permit(:nombre, :droga, :cantidad, :tratamiento_id)
    end
end
