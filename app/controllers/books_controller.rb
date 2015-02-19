class BooksController < ApplicationController
  def index
    @books = Book.all
    @author = Author.find params[:author_id]
  end

  def new
    @book = Book.new
    @author = Author.find params[:author_id]
  end

  def create
    @book = Book.create book_params
    @author = Author.find params[:author_id]
    @book.author = @author
    if @book.save
      flash[:success] = "Book created"
      redirect_to author_books_path(@book.author)
    else
      render :new
    end
  end

  def show
    @book = Book.find params[:id]
    @author = @book.author
  end

  def edit
    @book = Book.find params[:id]
    @author = @book.author
  end

  def update
    @book = Book.find params[:id]
    @book.update_attributes book_params
    @author = @book.author
    if @book.save
      redirect_to book_path(@book), flash: {success: "Book updated"}
    else
      render :edit
    end
  end

  def destroy
    book = Book.find params[:id]
    book.destroy
    flash[:notice] = "Book deleted"
    redirect_to author_books_path(book.author)
  end

  private
  def book_params
    params.require(:book).permit(:title, :author_id)
  end
end
