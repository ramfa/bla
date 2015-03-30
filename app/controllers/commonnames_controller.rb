class CommonnamesController < ApplicationController
  before_action :set_commonname, only: [:show, :edit, :update, :destroy]

  # GET /commonnames
  # GET /commonnames.json
  def index
    @commonnames = Commonname.order(params[:order]).all
  end

  # GET /commonnames/1
  # GET /commonnames/1.json
  def show
  end

  # GET /commonnames/new
  def new
    @commonname = Commonname.new
  end

  # GET /commonnames/1/edit
  def edit
  end

  # POST /commonnames
  # POST /commonnames.json
  def create
    @commonname = Commonname.new(commonname_params)

    respond_to do |format|
      if @commonname.save
        format.html { redirect_to @commonname, notice: 'Commonname was successfully created.' }
        format.json { render :show, status: :created, location: @commonname }
      else
        format.html { render :new }
        format.json { render json: @commonname.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /commonnames/1
  # PATCH/PUT /commonnames/1.json
  def update
    respond_to do |format|
      if @commonname.update(commonname_params)
        format.html { redirect_to @commonname, notice: 'Commonname was successfully updated.' }
        format.json { render :show, status: :ok, location: @commonname }
      else
        format.html { render :edit }
        format.json { render json: @commonname.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /commonnames/1
  # DELETE /commonnames/1.json
  def destroy
    @commonname.destroy
    respond_to do |format|
      format.html { redirect_to commonnames_url, notice: 'Commonname was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_commonname
      @commonname = Commonname.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def commonname_params
      params.require(:commonname).permit(:name, :kind_id)
    end
end
