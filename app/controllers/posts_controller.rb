class PostsController < ApplicationController

  before_action :post_params, only: [:show, :edit, :update]

  def index
     @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
  end

  def show
  end

  def edit
  end

  def update
    @post.update(post_params)
  end

  private

  def post_params
    params.require(:post)
      .permit(
        :content,
        :user_id,
        :theme_id,
        :category_id,
        :group_id
      )
  end

end