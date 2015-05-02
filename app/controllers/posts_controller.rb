class PostsController < ApplicationController

def new
  @post = Post.new
end

def index
  @posts = Post.all.order('created_at DESC')
end

def create
  @post = Post.new(post_params)
  @post.save
  redirect_to @post
end

def show
  @post = Post.find(params[:id])
end

private

def post_params
    params.require(:post).permit(:title, :body )
end


end

