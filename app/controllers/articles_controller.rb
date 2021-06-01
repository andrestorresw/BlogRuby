class ArticlesController < ApplicationController
    before_action :find_article, except: [:new, :create, :index]
    #Cada que se ejecute una accion, antes se va a ejecutar find_article

    def index
        @articles = Article.all
    end
    
    def show
    end

    def edit
    end

    def update
        @article.update(title: params[:article][:title], content: params[:article][:content])
        # ORM es lo que usamos para pasar cosas a la DB
        redirect_to @article
    end

    def new
        @article = Article.new #crear un nuevo objeto tipo Articulo vacio
        # Se crea la variable con @ para poder acceder a la variable desde la vista
    end

    def create #Guardar lo que hallamos recibido del formulario del metodo new
        @article = Article.create(title: params[:article][:title], content: params[:article][:content])
        # Estamos creando un hash (JSON) para que lo guarde en el modelo(db)
        # Recibimos lo que va a venir de new con params y creamos el articulo en la db
        render json: @article
    end

    def destroy
        @article.destroy
        redirect_to root_path
    end

    def find_article
        @article = Article.find(params[:id])
    end
end
