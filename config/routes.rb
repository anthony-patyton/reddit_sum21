Rails.application.routes.draw do
  #  allows us to communicte through the browser to our app
  #  rails command, http verbs, url, endpoint
  #  resources -it will gen, all needed routes for the main actions
  # resources :controller
  # root -onces , this root page
  # root 'controller@action'
  # long ways, defining your own routes
  # http verb, url, endpoint, rails command(optional)
  # get 'people/new', to: 'people#index'
  # post etc.
  root 'subs#index' # goes into controller of subs/index

  # bad example
  # resources :subs do #faster creating routes
  #   resources :topics do
  #     resources :comments
  #   end
  # end

  resources :subs do #faster creating routes
    resources :topics
  end

  resources :topics do
    resources :comments
  end
  # get 'sub/1'

  # get 'sub/3'
  # get 'sub/:id' BEST WAY FOR THE ID
  # :id - a placeholder for the id
  # :parent_id
  # embed, if there are any relational controllers we need to embed the 

end
