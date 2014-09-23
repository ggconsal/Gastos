class QueriesController < ApplicationController

  respond_to :html, :js

  def index
    vPrimerdia = Date.today.year.to_s+Date.today.month.to_s+"01"
    @queryRU = Movimiento.joins(subrubro: :rubro).select("rub_desc, sum(mov_importe) importe").where("mov_fecha between ? and ?", vPrimerdia, Date.today).group("rubro_id")
    @querySR = Movimiento.joins(subrubro: :rubro).select("rub_desc, sru_desc, sum(mov_importe) importe").where("mov_fecha between ? and ?", vPrimerdia, Date.today).group("rubro_id, subrubro_id")
    @queryTG = Movimiento.joins(:tipogasto).select("tga_desc, sum(mov_importe) importe").where("mov_fecha between ? and ?", vPrimerdia, Date.today).group("tipogasto_id")
    @queryTM = Movimiento.joins(:tipomov).select("tmo_desc, sum(mov_importe) importe").where("mov_fecha between ? and ?", vPrimerdia, Date.today).group("tipomov_id")
  end

  def create
    @query = Query.create(query_params)
    @queryRU = Movimiento.joins(subrubro: :rubro).select("rub_desc, sum(mov_importe) importe").where("mov_fecha between ? and ?", @query.con_fechad, @query.con_fechah).group("rubro_id")
    @querySR = Movimiento.joins(subrubro: :rubro).select("rub_desc, sru_desc, sum(mov_importe) importe").where("mov_fecha between ? and ?", @query.con_fechad, @query.con_fechah).order("rubro_id, subrubro_id").group("rubro_id, subrubro_id")
    @queryTG = Movimiento.joins(:tipogasto).select("tga_desc, sum(mov_importe) importe").where("mov_fecha between ? and ?", @query.con_fechad, @query.con_fechah).group("tipogasto_id")
    @queryTM = Movimiento.joins(:tipomov).select("tmo_desc, sum(mov_importe) importe").where("mov_fecha between ? and ?", @query.con_fechad, @query.con_fechah).group("tipomov_id")
  end

  def new
    @query = Query.new
  end

  def update
    @query.update_attributes(task_params)
  end

  def destroy
    @query.destroy
  end

  private

    def all_tasks
      @queries = Query.all
    end

    def set_query
      @query = Query.find(params[:id])
    end

    def query_params
      params.require(:query).permit(:con_fechad, :con_fechah, :con_descripcion, :user_id)
    end
end
