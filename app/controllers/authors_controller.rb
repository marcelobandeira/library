class AuthorsController < ApplicationController
 
  def index
    @authors = Author.all
  end

  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def edit
    @author = Author.find(params[:id])
  end

  def create
    @author = Author.new(author_params)
    @author.save
    redirect_to @author
  end

  def update
    @author = Author.find(params[:id])
    @author.update(author_params)
    redirect_to @author
  end

  def destroy
    @author = Author.find(params[:id])
    @author.destroy
    redirect_to authors_path
  end

  def author_params
    params.require(:author).permit(:name, :age, :last_book)
  end
end