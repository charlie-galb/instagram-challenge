class PostController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
  end

  def create
    @post = Post.create!(caption: params[:caption], user_id: current_user.id, image: params[:image])
    redirect_to root_path
  end

  private

  def post_params
    params.permit(:caption, :user_id, :image)
  end

end
