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
    redirect_to "/libraries"
  end
  
  def show
  end
  
  private

  def lib_params
    @kalum = :id, :title, :image
    params.require(:library).permit(@kalum).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end