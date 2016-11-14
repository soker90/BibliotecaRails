Rails.application.routes.draw do
  get 'autor/index'

  get 'autor/new'
  post "autor" => "autor#create"

  get 'autor/edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
