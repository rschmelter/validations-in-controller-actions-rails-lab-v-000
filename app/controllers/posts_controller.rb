# binding.pry

class PostsController < ApplicationController
  before_action :set_post!, only: [:show, :edit, :update]

  def show
  end

  def edit
  end

  def update
    @post = Post.find(params[:id])
<<<<<<< HEAD
    if @post.update(post_params)
=======
    if @post.valid?
      @post.update(post_params)
>>>>>>> eb016b83447b4f905f2af5f15f4a48c436eafc94
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  private

  def post_params
    params.permit(:category, :content, :title)
  end

  def set_post!
    @post = Post.find(params[:id])
  end
end
