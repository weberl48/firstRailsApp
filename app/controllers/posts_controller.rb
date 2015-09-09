class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  def new
    @post = Post.new
    # new model post
  end
  def create
    # redirect after posting from new and call post_params
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path
    else
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :author, :body)
  end
  # def is the prefix keyword function
end
