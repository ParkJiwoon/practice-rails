Rails.application.routes.draw do
  mount V1::Mount => '/api'
end
