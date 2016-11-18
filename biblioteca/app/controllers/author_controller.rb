class AuthorController < ApplicationController
  def index
    @author = Author.all
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    @author.save

    redirect_to :action => :show, :id => @author.id
  end

  def show
    @author = Author.find(params[:id])
  end

  def edit
    @author = Author.find(params[:id])
  end

  def update
    @author = Author.find(params[:id])

    if @author.update_attributes(author_params)
      redirect_to :action => :show, :id => @author.id
    else
      render 'edit'
    end
  end

  def author_params
    params.require(:autor).permit(:nombre, :apellidos)
  end
end