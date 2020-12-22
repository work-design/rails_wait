Rails.application.routes.draw do

  scope :admin, module: 'wait/admin', as: :admin, defaults: { namespace: 'admin', business: 'wait' } do
    resources :wait_taxons
  end

end
