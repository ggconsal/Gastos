class FormapagosController < ApplicationController
  before_action :set_formapago, only: [:show, :edit, :update, :destroy]

  # GET /formapagos
  # GET /formapagos.json
  def index
    @formapagos = Formapago.all
  end

  # GET /formapagos/1
  # GET /formapagos/1.json
  def show
  end

  # GET /formapagos/new
  def new
    @formapago = Formapago.new
  end

  # GET /formapagos/1/edit
  def edit
  end

  # POST /formapagos
  # POST /formapagos.json
  def create
    @formapago = Formapago.new(formapago_params)

    respond_to do |format|
      if @formapago.save
        format.html { redirect_to @formapago, notice: 'Se creo correctamente la Forma de Pago.' }
        format.json { render :show, status: :created, location: @formapago }
      else
        format.html { render :new }
        format.json { render json: @formapago.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /formapagos/1
  # PATCH/PUT /formapagos/1.json
  def update
    respond_to do |format|
      if @formapago.update(formapago_params)
        format.html { redirect_to @formapago, notice: 'Se actualizo correctamente la Forma de Pago.' }
        format.json { render :show, status: :ok, location: @formapago }
      else
        format.html { render :edit }
        format.json { render json: @formapago.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /formapagos/1
  # DELETE /formapagos/1.json
  def destroy
    @formapago.destroy
    respond_to do |format|
      format.html { redirect_to formapagos_url, notice: 'Se borro correctamente la Forma de Pago.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_formapago
      @formapago = Formapago.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def formapago_params
      params.require(:formapago).permit(:fpa_desc)
    end
end
