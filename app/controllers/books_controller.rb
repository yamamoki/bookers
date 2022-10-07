class BooksController < ApplicationController
  #def new
    #@book=Book.new
  #end
  
  


  def index
    @books=Book.all#これで投稿したのが出る
    #@book=Book.new
  end
  
  def destroy
    book=Book.find(params[:id])
    book.destroy
    redirect_to'/books'
  end
  
  def create
    book=Book.new(book_params)
    book.save
    redirect_to'/show'
  end

  def show
    
  end

  def edit
   #@book=Book.find(params[:id])
  end
  
 private
  # ストロングパラメータ
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
