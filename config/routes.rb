PomoCount::Application.routes.draw do
  devise_for :users do
    match '/user' => 'devise/registrations#edit',:as => :user_root
  end

  root :to => 'static_pages#index'
end
