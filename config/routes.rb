Rails.application.routes.draw do
    root 'questions#index'
    get '/questions' => 'questions#index'
    get '/questions/:id' => 'questions#show' as :qoute
   
end
