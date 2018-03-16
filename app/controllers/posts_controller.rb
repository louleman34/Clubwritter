class PostsController < ApplicationController

  before_action :set_post, only: [:show, :edit, :update]
  before_action :set_theme, only: [:index, :new, :create]

  def index
    @posts = Post.all
    @number_of_days = number_of_days_for_apply(@theme.deadline)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(
      theme_id: @theme.id,
      user_id: current_user.id,
      category_id: @theme.category_id,
      content: params[:post][:content]
      )
    if @post.save
      redirect_to theme_posts_path(@theme)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    @post.update(post_params)
  end

  private

  def number_of_days_for_apply(deadline)
    #calculate the number of day before the end of the inscription period
    deadline.mjd-DateTime.now.mjd
  end

  def set_theme
    @theme = Theme.find(params[:theme_id])
  end

  def set_post
    @post = Post.find(params[:id])
  end


  def post_params
    params.require(:post)
      .permit(
        :content,
        :user_id,
        :theme_id,
        :category_id,
        :private,
      )
  end

end
