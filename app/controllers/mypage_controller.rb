require 'pry'
class MypageController < ApplicationController

  def show
     @article = current_user.articles.page(params[:page]).per(10)
    #  binding.pry
  end

end
