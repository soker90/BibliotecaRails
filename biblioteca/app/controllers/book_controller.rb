class BookController < ApplicationController
  def index
    @book = Book.all
    @author = Author.all
  end

  def new
    @book = Book.new
    @author = Author.all
  end

  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to :action => :show, :id => @book.id


  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @author = Author.all
    @book = Book.find(params[:id])

  end

  def update
    @book = Book.find(params[:id])

    if @book.update_attributes(book_params)
      redirect_to :action => :show, :id => @book.id
    else
      render 'edit'
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy

    redirect_to :action => :index
  end

  def book_params
    params.require(:book).permit(:nombre, :author_id)
  end
end
