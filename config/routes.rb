Rails.application.routes.draw do

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
    devise_for :customers, controllers: {
        sessions: 'customers/sessions',
        passwords: 'customers/passwords',
        registrations: 'customers/registrations'  
    } 
end
