class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
end

def manipulacaoControle(tipo, condicao, classe, funcao, status, casoContrario)
  respond_to do |format|
    if condicao
      format.html {redirect_to tipo, notice: classe + ' was sucessfully ' + funcao}
      format.json {render :show, status: status, location: tipo}
    else
      format.html {render casoContrario}
      format.json {render json: tipo.errors, status: :unprocessable_entity}
    end

  end
end
