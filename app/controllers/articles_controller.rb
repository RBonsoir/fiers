class ArticlesController < ApplicationController
	before_action :set_article, only: [:show, :edit, :update, :destroy]
	
	def index
		@articles = Article.all
	end

	def show
	end

	def new
		@article = Article.new
	end

	def create
		@article = Article.create(article_params)
		redirect_to articles_path
	end

	def edit
	end

	def update
		@article.update(article_params)
		redirect_to article_path(@article)
	end

	def destroy
		@article.destroy
		redirect_to articles_path
	end

	private
	
	def set_article
		@article = Article.find(params[:id])
	end

	def article_params
		params.require(:article).permit(:title, :text_fr, :text_en, :status)
	end

end
