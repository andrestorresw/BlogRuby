class HomeController < ApplicationController
  before_action :authenticate_user! #Force an user login

  def index
    #Aun estando vacia rails busca en la carpeta views una subcarpeta llamada igual que el controlador y una archivo que se llame igual que la accion, ahi tenemos la muesta index
  end
end
