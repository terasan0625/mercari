Rails.application.routes.draw do
  resources:items, only:[:show,:create,:new]
  root to: 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
