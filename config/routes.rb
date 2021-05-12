Rails.application.routes.draw do

#会員側
devise_for :customers, controllers: {
        sessions: 'customers/sessions',
        passwords: 'customers/passwords',
        registrations: 'customers/registrations'
    }
    
  get 'homes/top'
  root to: 'homes#top'
  get 'home/about' => 'homes#about'
  resources :items
  resources :customers

  # 退会確認画面
  get '/customer/:id/quit' => 'customers#quit', as: 'quit'
  # 論理削除用のルーティング
  patch '/customer/:id/withdraw' => 'customers#withdraw', as: 'withdraw'

  get 'search/search'
  get '/search', to: 'search#search'

#運営側
namespace :admin do
    resources :items
    resources :genres
    resources :customers
end

devise_for :admins, controllers: {
    sessions: 'admins/sessions',
    passwords: 'admins/passwords',
    registrations: 'admins/registrations'
}

end
