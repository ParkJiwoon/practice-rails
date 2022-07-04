module V1
  class Hello < Grape::API
    desc 'Return success message'
    get 'status' do
      { res: "success" }
    end

    desc 'Return message with ID'
    params do
      requires :id, type: Integer, desc: 'ID'
    end
    get ':id' do
      { res: "hello #{params[:id]}" }
    end
  end
end
