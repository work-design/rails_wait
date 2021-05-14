Rails.application.routes.draw do

  namespace :wait, defaults: { business: 'wait' } do
    namespace :admin, defaults: { namespace: 'admin' } do
      resources :wait_taxons
    end
  end

end
