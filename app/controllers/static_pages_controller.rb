class StaticPagesController < ApplicationController
  def home
    @posts = Post.paginate(page: params[:page], per_page: 5).order('created_at DESC')
  end

  def about
  end
end
