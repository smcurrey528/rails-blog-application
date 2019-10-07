class ArticlesController < ApplicationController

def new
    @article = Article.new(params.require(:article).permit(:title, :author, :text))

    @article.save
    redirect_to @article
end
