class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
    respond_to do |format|
      format.html
      format.json {render json: @article.as_json(only: [:id, :name, :content], include: [:author, {comments: {only: [:id, :name, :content]}}])}
    end
  end
end
