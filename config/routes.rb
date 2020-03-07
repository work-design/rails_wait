Rails.application.routes.draw do

  scope :admin, module: 'wait/admin', as: :admin do
    resources :wait_taxons
  end

end
