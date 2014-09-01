class SubrubrosController < ApplicationController
  before_action :set_subrubro, only: [:show, :edit, :update, :destroy]

  # GET /subrubros
  # GET /subrubros.json
  def index
    @subrubros = Subrubro.all
  end

  def lista_sr
    @srmov = Subrubro.find(:all)
  end
  
  # GET /subrubros/1
  # GET /subrubros/1.json
  def show
  end

  # GET /subrubros/new
  def new
    @subrubro = Subrubro.new
  end

  # GET /subrubros/1/edit
  def edit
  end

  # POST /subrubros
  # POST /subrubros.json
  def create
    @subrubro = Subrubro.new(subrubro_params)

    respond_to do |format|
      if @subrubro.save
        format.html { redirect_to @subrubro, notice: 'Subrubro was successfully created.' }
        format.json { render :show, status: :created, location: @subrubro }
      else
        format.html { render :new }
        format.json { render json: @subrubro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subrubros/1
  # PATCH/PUT /subrubros/1.json
  def update
    respond_to do |format|
      if @subrubro.update(subrubro_params)
        format.html { redirect_to @subrubro, notice: 'Subrubro was successfully updated.' }
        format.json { render :show, status: :ok, location: @subrubro }
      else
        format.html { render :edit }
        format.json { render json: @subrubro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subrubros/1
  # DELETE /subrubros/1.json
  def destroy
    @subrubro.destroy
    respond_to do |format|
      format.html { redirect_to subrubros_url, notice: 'Subrubro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subrubro
      @subrubro = Subrubro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subrubro_params
      params.require(:subrubro).permit(:sru_desc, :rubro_id)
    end
end
