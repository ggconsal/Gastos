class MovimientosController < ApplicationController
  before_action :set_movimiento, only: [:show, :edit, :update, :destroy]

  # GET /movimientos
  # GET /movimientos.json
  def index
    @movimientos = Movimiento.all
  end

  def lista_sr
    @sr_mov = Subrubro.all
  end

  # GET /movimientos/1
  # GET /movimientos/1.json
  def show
  end

  # GET /movimientos/new
  def new
    @movimiento = Movimiento.new
  end

  # GET /movimientos/1/edit
  def edit
  end

  # POST /movimientos
  # POST /movimientos.json
  def create
    @movimiento = Movimiento.new(movimiento_params)

    @movimiento.user = current_user

    qRubros = Subrubro.joins(:rubro).select("rub_suma").where("subrubros.id = ?", @movimiento.subrubro_id)

    qRubros.each do |ru|
      vSuma = ru.rub_suma
    end

    if vSuma = 0
      @movimiento.mov_importe = @movimiento.mov_importe * -1
    end

    respond_to do |format|
      if @movimiento.save
        format.html { redirect_to @movimiento, notice: 'Se creo correctamente el movimiento.' }
        format.json { render :show, status: :created, location: @movimiento }
      else
        format.html { render :new }
        format.json { render json: @movimiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movimientos/1
  # PATCH/PUT /movimientos/1.json
  def update
    respond_to do |format|
      if @movimiento.update(movimiento_params)
        format.html { redirect_to @movimiento, notice: 'Se actualizo correctamente el movimiento.' }
        format.json { render :show, status: :ok, location: @movimiento }
      else
        format.html { render :edit }
        format.json { render json: @movimiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movimientos/1
  # DELETE /movimientos/1.json
  def destroy
    @movimiento.destroy
    respond_to do |format|
      format.html { redirect_to movimientos_url, notice: 'Se borro correctamente el movimiento.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movimiento
      @movimiento = Movimiento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movimiento_params
      params.require(:movimiento).permit(:mov_fecha, :mov_importe, :mov_obs, :mov_lote, :subrubro_id, :tipogasto_id, :tipomov_id, :formapago_id, :user_id)
    end
end
