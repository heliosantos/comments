Comments::Application.routes.draw do
  match 'comments' => 'comments#index', as: 'comments'
  match 'comments/reply' => 'comments#reply'
  root :to => 'comments#index'
end
