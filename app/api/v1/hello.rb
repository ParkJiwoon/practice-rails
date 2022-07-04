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
  end
end
