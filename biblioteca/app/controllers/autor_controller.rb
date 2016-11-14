class AutorController < ApplicationController
  def index
  end

  def new
  end
  
  def create
  	@autor = Autor.new(params[:post])
  	@autor.save
  	
  	redirect_to :action => :show, :id => @autor.id
  end

  def edit
  end
end
