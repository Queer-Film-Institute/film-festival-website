class PostsController < ApplicationController
  def index
    check_preview_api
    @posts = Post.find_all
  end

  def show
    check_preview_api
    @post = Post.find_by(slug: params[:id]).first()
  end
end
