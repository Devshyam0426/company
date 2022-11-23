Rails.application.routes.draw do
  #get 'employees/index'
  #get 'employees/show'
  #get 'employees/new'
  #get 'employees/create'
  #get 'employees/edit'
  #get 'employees/update'
  #get 'employees/destroy'

  resources :employees

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
