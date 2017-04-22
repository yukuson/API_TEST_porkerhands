Rails.application.routes.draw do
  get 'porkerhands' => 'porkerhands#index'
  post 'porkerhands' => 'porkerhands#check'
  mount API::Root => '/api'
end
