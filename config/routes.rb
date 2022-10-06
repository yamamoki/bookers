Rails.application.routes.draw do
  #get 'books/new'
  get 'books/index'#indexがshowになる為残している
  
  #get 'books/edit'
  resources :books
 
  get '/' => 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
