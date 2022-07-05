module V1
  class Hello < Grape::API
    desc 'Return success message'
    get '/hello' do
      { res: "success" }
    end

    desc 'Return message with ID'
    params do
      requires :id, type: Integer, desc: 'ID'
    end
    get '/hello/:id' do
      { res: "hello #{params[:id]}" }
    end

    desc 'Return Simple Response'
    get '/simple' do
      response = { code: 200, message: "OK", success: true }
      present response, with: V1::Entities::SimpleResponseEntity
    end
  end
end
