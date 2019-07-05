module V1::Entities
  class UserResult < Grape::Entity
    expose :name, documentation: { required: true, type: 'String', desc: 'error message' }
  end
end
