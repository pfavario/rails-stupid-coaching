Rails.application.routes.draw do
  get 'answer' => 'questions#answer'

  get 'ask' => 'questions#ask'

  # root 'quenstions#ask'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
