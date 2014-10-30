class PromosController < ApplicationController
  before_action :set_promo, only: [:show, :edit, :update, :destroy]

  # GET /slots
  # GET /slots.json
  def index
    @promos = Promo.all
  end

  # GET /slots/1
  # GET /slots/1.json
  def show
  end

  # GET /slots/new
  def new
    @promo = Promo.new
  end

  # GET /slots/1/edit
  def edit
  end

  # POST /slots
  # POST /slots.json
  def create
    @promo = Promo.new(promo_params)

    respond_to do |format|
      if @promo.save
        format.html { redirect_to @promo, notice: 'Promocion was successfully created.' }
        format.json { render action: 'show', status: :created, location: @promo }
      else
        format.html { render action: 'new' }
        format.json { render json: @promo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /slots/1
  # PATCH/PUT /slots/1.json
  def update
    respond_to do |format|
      if @promo.update(promo_params)
        format.html { redirect_to @promo, notice: 'Promocion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @promo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /servicios/1
  # DELETE /servicios/1.json
  def destroy
    @promo.destroy
    respond_to do |format|
      format.html { redirect_to promo_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_promo
      @promo = Promo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def promo_params
      params.require(:promo).permit(:descripcion)
    end
end
