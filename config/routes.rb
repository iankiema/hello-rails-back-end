Rails.application.routes.draw do
  namespace :api do
    get '/greetings/random', to: 'greetings#random'
  end

  get '*path', to: 'fallback#index', constraints: ->(req) { !req.xhr? && req.format.html? }
end
