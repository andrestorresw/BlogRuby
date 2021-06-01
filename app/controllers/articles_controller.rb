class ArticlesController < ApplicationController

    def show #Nos permite buscar un articulo y mostrarlo
        @article = Article.find(params[:id])
    end

    def edit
        @article = Article.find(params[:id])
    end

    def update
        @article = Article.find(params[:id])
        @article.update(title: params[:article][:title], content: params[:article][:content])
        # ORM es lo que usamos para pasar cosas a la DB
        redirect_to @article
    end

    def new #Su funcion es crear el formulario para poder crear el articulo
        @article = Article.new #crear un nuevo objeto tipo Articulo vacio
        # Se crea la variable con @ para poder acceder a la variable desde la vista
    end

    def create #Guardar lo que hallamos recibido del formulario del metodo new
        @article = Article.create(title: params[:article][:title], content: params[:article][:content])
        # Estamos creando un hash (JSON) para que lo guarde en el modelo(db)
        # Recibimos lo que va a venir de new con params y creamos el articulo en la db
        render json: @article
        # Esto muestra la version json del objeto @article que se acaba de crear en la db
    end

    def destroy
        @article = Article.find(params[:id])
        @article.destroy
        redirect_to root_path
    end
end
