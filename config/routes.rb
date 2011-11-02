Techtoolstorage::Application.routes.draw do
  devise_for :users do
    get '/' => 'devise/sessions#new'
  end
end
