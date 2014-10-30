class PromocionesController < ApplicationController
  before_action :set_promocion, only: [:show, :edit, :update, :destroy]

  # GET /slots
  # GET /slots.json
  def index
    @promociones = Promocion.all
  end

  # GET /slots/1
  # GET /slots/1.json
  def show
  end

  # GET /slots/new
  def new
    @promocion = Promocion.new
  end

  # GET /slots/1/edit
  def edit
  end

  # POST /slots
  # POST /slots.json
  def create
    @promocion = Promocion.new(promocion_params)

    respond_to do |format|
      if @spromocion.save
        format.html { redirect_to @promocion, notice: 'Promocion was successfully created.' }
        format.json { render action: 'show', status: :created, location: @promocion }
      else
        format.html { render action: 'new' }
        format.json { render json: @promocion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /slots/1
  # PATCH/PUT /slots/1.json
  def update
    respond_to do |format|
      if @promocion.update(promocion_params)
        format.html { redirect_to @promocion, notice: 'Promocion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @promocion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /servicios/1
  # DELETE /servicios/1.json
  def destroy
    @promocion.destroy
    respond_to do |format|
      format.html { redirect_to promocion_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_promocion
      @promocion = Promocion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def promocion_params
      params.require(:promocion).permit(:descripcion)
    end
end
