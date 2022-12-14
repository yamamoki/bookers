class BooksController < ApplicationController
  #def new
    #@book=Book.new
  #end



  def index
    @books=Book.all#これで投稿したのが出る
    @book=Book.new
  end

  def destroy
    @book=Book.find(params[:id])
    @book.destroy
    flash[:notice] ="Book was successfully created."
    redirect_to'/books'
  end

  def create#保存機能
    @book=Book.new(book_params)
    if @book.save
    #投稿が成功
    flash[:notice] ="Book was successfully created."
    redirect_to book_path(@book)
    else
    @books=Book.all
    render :index
    end
  end

  def show
    @book=Book.find(params[:id])
  end

  def edit
    @book=Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
    flash[:notice] ="Book was successfully created."
    redirect_to book_path(@book.id)
    else
    render :edit
    end
  end

 private
  # ストロングパラメータ
  def book_params
    params.require(:book).permit(:title, :body)
  end



end
