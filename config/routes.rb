Rails.application.routes.draw do
    root 'questions#index'
    get '/questions' => 'questions#index'
    get '/questions/new' => 'questions#new' 
    get '/questions/:id' => 'questions#show', as: :question
    post '/questions' => 'questions#create'
    get 'questions/:id/edit' => 'questions#edit', as: :edit_question
    patch 'questions/:id' => 'questions#update'
    delete 'questions/:id' => 'questions#destroy'
end
