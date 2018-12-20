class ComentariosController < ApplicationController
  before_action :set_comentario, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /comentarios
  # GET /comentarios.json
  def index
    @comentarios = Comentario.all
  end

  # GET /comentarios/1
  # GET /comentarios/1.json
  def show
  end

  # GET /comentarios/new
  def new
    @comentario = Comentario.new
  end

  # GET /comentarios/1/edit
  def edit
  end

  # POST /comentarios
  # POST /comentarios.json
  def create
    @topico = Topico.find(params[:topico_id])
    @comentario = @topico.comentarios.create(comentario_params)

    redirect_to topico_path(@topico)
  end

  # PATCH/PUT /comentarios/1
  # PATCH/PUT /comentarios/1.json
  def update
    #respond_to do |format|
    #  if @comentario.update(comentario_params)
    #    format.html { redirect_to @comentario, notice: 'Comentario was successfully updated.' }
    #    format.json { render :show, status: :ok, location: @comentario }
    #  else
    #    format.html { render :edit }
    #    format.json { render json: @comentario.errors, status: :unprocessable_entity }
    #  end
    #end
    manipulacaoControle(@comentario, @comentario.update(comentario_params), 'Comentario', 'updated.', :ok, :edit)
  end

  # DELETE /comentarios/1
  # DELETE /comentarios/1.json
  def destroy
    @comentario.destroy
    respond_to do |format|
      format.html { redirect_to topicos_path, notice: 'Comentario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comentario
      @comentario = Comentario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comentario_params
      params.require(:comentario).permit(:usuario, :texto, :topico_id)
    end
end
