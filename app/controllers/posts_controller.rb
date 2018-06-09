class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new

  end

  def create
    Post.create(title: params[:post][:title], description: params[:post][:description])
    redirect_to posts_path
  end

  private
  def find_params
    @posts = Post.all.find(params)
  end
end
