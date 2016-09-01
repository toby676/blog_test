class PostsController < ApplicationController

  def index
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    redirect_to '/'
  end


  def post_params
    params.require(:post).permit(:title, :content)
  end

end
