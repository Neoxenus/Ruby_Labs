Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # get "/translate" => "pages#translate"

  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    resources 'students'
    root 'students#index'

    get 'pages/first' => 'pages#first'
    get 'pages/second' => 'pages#second'
    get 'pages/third' => 'pages#third'
    get 'pages/fourth' => 'pages#fourth'
  end

  # Defines the root path route ("/")
  # root "articles#index"

end
