class ArticlesController < ApplicationController
  def index
    @articles = Article.published.order(written_at: :desc)
  end
end
