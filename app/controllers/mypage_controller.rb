require 'pry'
class MypageController < ApplicationController

  def show
     @article = current_user.articles
    #  binding.pry
  end

end
