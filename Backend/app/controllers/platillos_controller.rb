class PlatillosController < ApplicationController
  before_action :set_platillo, only: %i[ show update destroy ]
  before_action :set_headers


  # GET /platillos
  def index
    @platillos = Platillo.all

    render json: @platillos
  end

  # GET /platillos/1
  def show
    render json: @platillo
  end

  # POST /platillos
  def create
    @platillo = Platillo.new(platillo_params)

    if @platillo.save
      render json: @platillo, status: :created, location: @platillo
    else
      render json: @platillo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /platillos/1
  def update
    if @platillo.update(platillo_params)
      render json: @platillo
    else
      render json: @platillo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /platillos/1
  def destroy
    @platillo.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_platillo
      @platillo = Platillo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def platillo_params
      params.require(:platillo).permit(:oferta, :imgPlato, :icono, :nombre, :tiempo, :precio, :descripcion)
    end
    private

  def set_headers
    response.headers['Access-Control-Allow-Origin'] = 'http://127.0.0.1:5500' =begin dirección de puerto del frontend=end
    response.headers['Access-Control-Allow-Origin'] = 'http://127.0.0.1:4321' =begin dirección de puerto del frontend del trabajo (requerido)=end
    response.headers['Access-Control-Allow-Methods'] = 'GET, POST, PUT, PATCH, DELETE, OPTIONS, HEAD' =begin este es requerido=end
    response.headers['Access-Control-Allow-Headers'] = 'Content-Type' =begin también es requerido=end
  end
end
