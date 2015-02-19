class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.create author_params
    if @author.save
      redirect_to authors_path, flash: {success: "Author created"}
    else
      render :new
    end
  end

  def show
    @author = Author.find params[:id]
  end

  def edit
    @author = Author.find params[:id]
  end

  def update
    @author = Author.find params[:id]
    @author.update_attributes author_params
    if @author.save
      flash[:success] = "Updated"
      redirect_to author_path(@author)
    else
      render :edit
    end
  end

  def destroy
    author = Author.find params[:id]
    author.destroy
    redirect_to authors_path, notice: "Deleted"
  end

  private
  def author_params
    params.require(:author).permit(:name)
  end
end
