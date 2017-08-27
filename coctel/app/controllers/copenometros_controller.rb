class CopenometrosController < ApplicationController
  before_action :set_copenometro, only: [:show, :edit, :update, :destroy]

  # GET /copenometros
  # GET /copenometros.json
  def index
    @copenometros = Copenometro.all
  end

  # GET /copenometros/1
  # GET /copenometros/1.json
  def show
    @copenometro = Copenometro.new

  end

  # GET /copenometros/new
  def new
    @copenometro = Copenometro.new
    @coponemotro_lista = Copenometro.all
    @usuarios = Usuario.new
  end

  # GET /copenometros/1/edit
  def edit
  end

  # POST /copenometros
  # POST /copenometros.json
  def create
    @usuario = Usuario.find(params[:usuario_id])
    @copenometro = Copenometro.new(copenometro_params)
    @copenometro.usuario = @usuario

    respond_to do |format|
      if @copenometro.save
        format.html { redirect_to @usuario, notice: 'Agregado con Exito' }
        format.json { render :show, status: :created, location: @copenometro }
      else
        format.html { render :new }
        format.json { render json: @copenometro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /copenometros/1
  # PATCH/PUT /copenometros/1.json
  def update
    respond_to do |format|
      if @copenometro.update(copenometro_params)
        format.html { redirect_to @copenometro, notice: 'Copenometro was successfully updated.' }
        format.json { render :show, status: :ok, location: @copenometro }
      else
        format.html { render :edit }
        format.json { render json: @copenometro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /copenometros/1
  # DELETE /copenometros/1.json
  def destroy
    @copenometro.destroy
    respond_to do |format|
      format.html { redirect_to new_copenometro_path, notice: 'Copenometro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def calcular
    @copenomotro_lista = Copenometro.all
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_copenometro
      @copenometro = Copenometro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def copenometro_params
      params.require(:copenometro).permit(:liquido, :ml, :Grados2, :Ga)
    end
end
