class LibrariesController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

  def index
    @libraries = Library.all
    @lib = Library.new
  end

  def new
    @lib = Library.new
  end

  def create
    @lib = Library.create(lib_params)
    redirect_to "/libraries/new"
  end
  
  def show
  end

  def homepage
    @libraries = Library.all
    @lib = Library.new
  end
  
  private

  def lib_params
    params.require(:library).permit(:id,:title,:image,:author).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end