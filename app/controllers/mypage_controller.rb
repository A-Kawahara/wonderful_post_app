require 'pry'
class MypageController < ApplicationController

  def show
    articles = current_user.articles.includes(:tags)
    articles = articles.where("title LIKE ?", "%#{params[:title]}%") if params[:title].present?
    @articles = articles.page params[:page]

    #  @article = current_user.articles.page(params[:page]).per(10).search(params[:search])
      # binding.pry
  end

end
