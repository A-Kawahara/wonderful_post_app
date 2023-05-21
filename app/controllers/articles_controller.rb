class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
        redirect_to article_url(@article), notice: "Article was successfully created."
      else
        render :new, status: :unprocessable_entity
      end
  end

  private
    # Only allow a list of trusted parameters through.
    def article_params
      params.require(:article).permit(:title, :content)
    end
end
