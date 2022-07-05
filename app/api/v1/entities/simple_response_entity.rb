module V1
  module Entities
    class SimpleResponseEntity < Grape::Entity
      expose :code, documentation: { type: "Integer", desc: "Status code" }
      expose :message, documentation: { type: "String", desc: "Response message" }
    end
  end
end
