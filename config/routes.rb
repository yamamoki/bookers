Rails.application.routes.draw do
  #get 'books/show'
  #get 'books' => 'books#index'
  #post 'books' => 'books#create'
  get '/' => 'homes#top'
  #get '/show' => 'books#show'
  #get '/edit' => 'books#edit'
 


  resources :books
  
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
