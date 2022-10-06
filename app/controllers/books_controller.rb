class BooksController < ApplicationController
  #def new
    #@book=Book.new
  #end
  
  def create
    book=Book.new(book_params)
    book.save
    rediect_to'books'
  end


  def index
    @books=Book.all#これで投稿したのが出る
  end

  def show
    @book=Book.new
  end

  def edit
  end
  
 private
  # ストロングパラメータ
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
