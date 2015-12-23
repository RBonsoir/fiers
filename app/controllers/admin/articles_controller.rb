module Admin
  class ArticlesController < Admin::BaseController
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
      @article = Article.new(article_params)
      @article.author = current_user

      if @article.save
        flash[:notice] = I18n.t('admin.articles.create.flash.notice')
        redirect_to admin_articles_path
      else
        flash.now[:alert] = I18n.t('admin.articles.create.flash.alert')
        render :new
      end
    end

    def edit
      if @article.article_selections.empty?
        @article.template_settings.selections_count.times do |index|
          @article.article_selections.build(position: index + 1)
        end
      end
    end

    def update
      @article.update(article_params)
      redirect_to admin_article_path(@article)
    end

    def destroy
      @article.destroy
      redirect_to admin_articles_path
    end

    private

    def set_article
      @article = Article.find(params[:id])
    end

    def article_params
      params.require(:article).permit(
        :status,
        :template_name,
        :text_en,
        :text_fr,
        :title,
        :written_at,
        article_selections_attributes: [
          :image_id,
          :position
        ]
      )
    end
  end
end
