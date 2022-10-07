Rails.application.routes.draw do
  get 'books/index'#indexがshowになる為残している
  get '/' => 'homes#top'
  get '/show' =>'books#show'
  #get 'books/edit'
  resources :books
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
