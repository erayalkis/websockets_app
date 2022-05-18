class PostsController < ApplicationController
  def index
    @post = Post.all

    if @post
      render json: @post
    else
      render json: { msg: 'Posts not found!' }, status: 404
    end
  end

  def show
    @post = Post.find(params[:id])

    if @post
      render json: @post
    else
      render json: { msg: 'Post not found!' }, status: 404
    end
  end

  def create
    @post = Post.new(post_params)

    if @post.create!
      render json: @post
    else
      render json: @post.errors.full_messages, status: 500
    end
  end

  def update
    @post = Post.find(params[:id])

    if post.update!(post_params)
      render json: @post
    else
      render json: @post.errors.full_messages, status: 500
    end
  end

  def destroy
   @post = Post.find(params[:id])
   @post.destroy
  end

  private

  def post_params
    params.require(:post).permit(:body, :user_id)
  end

end
