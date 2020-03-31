class PostsController < ApplicationController
  def index
    # @post = post_params
  end

  def new

  end

  private

  def post_params
    params.require(:library).permit(:title)
  end
  
end
