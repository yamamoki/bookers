class BooksController < ApplicationController
  #def new
    #@book=Book.new
  #end
  
  def create
    book=Book.new(book_params)
    book.save
    rediect_to'/show'
  end


  def index
    @books=Book.all#これで投稿したのが出る
   
  end

  def show
  end

  def edit
  end
  
 private
  # ストロングパラメータ
  def list_params
    params.require(:list).permit(:title, :body)
  end
end
