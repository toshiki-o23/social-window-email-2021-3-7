Rails.application.routes.draw do
  root 'inquiries#new'
  get 'inquiries/:id', to: 'inquiries#create' 
  post 'inquiries/confirm'
  post 'inquiries/thanks'
  patch 'inquiries/edit'
end
