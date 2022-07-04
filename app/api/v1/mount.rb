module V1
  class Mount < Grape::API
    version 'v1', using: :path
    format :json

    mount ::V1::Hello
  end
end
