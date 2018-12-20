class FormulariosController < ApplicationController
  before_action :set_formulario, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /formularios
  # GET /formularios.json
  def index
    @formularios = Formulario.all
    $statusA = "Pendente"
  end

  # GET /formularios/1
  # GET /formularios/1.json
  def show
  end

  # GET /formularios/new
  def new
    @formulario = Formulario.new
  end

  # GET /formularios/1/edit
  def edit
  end

  # POST /formularios
  # POST /formularios.json
  def create
    @formulario = Formulario.new(formulario_params)
    @formulario.email = current_user.email
    @formulario.status = "Pendente"
    #respond_to do |format|
    #  if @formulario.save
    #    format.html { redirect_to @formulario, notice: 'Formulario was successfully created.' }
    #    format.json { render :show, status: :created, location: @formulario }
    #  else
    #    format.html { render :new }
    #    format.json { render json: @formulario.errors, status: :unprocessable_entity }
    #  end
    #end
    manipulacaoControle(@formulario, @formulario.save, 'Formulario', 'created.', :created, :new)
  end

  # PATCH/PUT /formularios/1
  # PATCH/PUT /formularios/1.json
  def update
    #respond_to do |format|
    #  if @formulario.update(formulario_params)
    #    format.html { redirect_to @formulario, notice: 'Formulario was successfully updated.' }
    #    format.json { render :show, status: :ok, location: @formulario }
    #  else
    #    format.html { render :edit }
    #    format.json { render json: @formulario.errors, status: :unprocessable_entity }
    #  end
    #end
    manipulacaoControle(@formulario, @formulario.update(formulario_params), 'Formulario', 'updated.', :ok, :edit)
  end

  # DELETE /formularios/1
  # DELETE /formularios/1.json
  def destroy
    @formulario.destroy
    respond_to do |format|
      format.html { redirect_to formularios_url, notice: 'Formulario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  #GET /formularios/aceitos
  def aceitos
    @formularios = Formulario.all
    $statusA = "Aceito"
  end

  #GET /formularios/recusados
  def recusados
    @formularios = Formulario.all
    $statusA = "Recusado"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_formulario
      @formulario = Formulario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def formulario_params
      params.require(:formulario).permit(:email, :contratante, :descricao, :data, :local, :status)
    end
end
