class PostsController < ApplicationController
  def index

    @posts = Post.all

  end

  def new

    @post = Post.new

  end

  def create

    @post = Post.new(post_params)

    if @post.save
      redirect_to posts_path
    else
      render 'new'
    end

  end

  def post_params
    post_params.require(:post).permit(:title, :description)
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end
end
