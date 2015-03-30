class EgressesController < ApplicationController
  before_action :set_egress, only: [:show, :edit, :update, :destroy]

  # GET /egresses
  # GET /egresses.json
  def index
    @egresses = Egress.all
  end

  # GET /egresses/1
  # GET /egresses/1.json
  def show
  end

  # GET /egresses/new
  def new
    @egress = Egress.new
  end

  # GET /egresses/1/edit
  def edit
  end

  # POST /egresses
  # POST /egresses.json
  def create
    @egress = Egress.new(egress_params)

    respond_to do |format|
      if @egress.save
        format.html { redirect_to @egress, notice: 'Egress was successfully created.' }
        format.json { render :show, status: :created, location: @egress }
      else
        format.html { render :new }
        format.json { render json: @egress.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /egresses/1
  # PATCH/PUT /egresses/1.json
  def update
    respond_to do |format|
      if @egress.update(egress_params)
        format.html { redirect_to @egress, notice: 'Egress was successfully updated.' }
        format.json { render :show, status: :ok, location: @egress }
      else
        format.html { render :edit }
        format.json { render json: @egress.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /egresses/1
  # DELETE /egresses/1.json
  def destroy
    @egress.destroy
    respond_to do |format|
      format.html { redirect_to egresses_url, notice: 'Egress was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_egress
      @egress = Egress.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def egress_params
      params.require(:egress).permit(:date, :cause, :reproduction, :age, :causedeath, :observations, :animal_id)
    end
end
