require "entities"
require "helpers"

module LawWenda
  class API < Grape::API
    prefix "api"
    
    helpers APIHelpers
    
    
    resource :users do
      # Get top 20 hot users
      # Example
      # /api/users.json
      get do
        @users = User.all
        present @users, :with => APIEntities::DetailUser
      end
      
    end
  end
end