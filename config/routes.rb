Rails.application.routes.draw do

  get '/' => 'application#index'

  get '/:id' => 'application#show', as: :event

  get '/:id/members' => 'application#members', as: :members

  get '/:id/workers' => 'application#workers', as: :workers
  get '/:id/incomings' => 'application#incomings', as: :incomings
  get '/:id/outcomings' => 'application#outcomings', as: :outcomings
end
