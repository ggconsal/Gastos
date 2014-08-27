class TipogastosController < ApplicationController
  before_action :set_tipogasto, only: [:show, :edit, :update, :destroy]

  # GET /tipogastos
  # GET /tipogastos.json
  def index
    @tipogastos = Tipogasto.all
  end

  # GET /tipogastos/1
  # GET /tipogastos/1.json
  def show
  end

  # GET /tipogastos/new
  def new
    @tipogasto = Tipogasto.new
  end

  # GET /tipogastos/1/edit
  def edit
  end

  # POST /tipogastos
  # POST /tipogastos.json
  def create
    @tipogasto = Tipogasto.new(tipogasto_params)

    respond_to do |format|
      if @tipogasto.save
        format.html { redirect_to @tipogasto, notice: 'Tipogasto was successfully created.' }
        format.json { render :show, status: :created, location: @tipogasto }
      else
        format.html { render :new }
        format.json { render json: @tipogasto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipogastos/1
  # PATCH/PUT /tipogastos/1.json
  def update
    respond_to do |format|
      if @tipogasto.update(tipogasto_params)
        format.html { redirect_to @tipogasto, notice: 'Tipogasto was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipogasto }
      else
        format.html { render :edit }
        format.json { render json: @tipogasto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipogastos/1
  # DELETE /tipogastos/1.json
  def destroy
    @tipogasto.destroy
    respond_to do |format|
      format.html { redirect_to tipogastos_url, notice: 'Tipogasto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipogasto
      @tipogasto = Tipogasto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipogasto_params
      params.require(:tipogasto).permit(:tga_desc)
    end
end
