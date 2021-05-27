class ArticlesController < ApplicationController
    def new #Su funcion es crear el formulario para poder crear el articulo
        @article = Article.new
        @article.title = 'Demo'
    end

    def create #Guardar lo que hallamos recibido del formulario del metodo new
        @article = Article.create(title: params[:article][:title])
        render json: @article
    end
end
