module V1
  class User < Base
    # users
    desc "`Return all Users`" do
      failure [
        [400, "`Can't be load user`"],
        [500, "`unknown`"],
      ]
    end

    get :users do
      users = ::User.all
      present :users, users, with: V1::Entities::UserResult
    end

    # user
    desc "`return name at User model`" do
      success model: V1::Entities::UserResult, examples: {
        'application/json': {
          name: 'user1'
        },
      }
      failure [
        [400, "`Can't be load user`"],
        [500, "`unknown`"],
      ]
    end

    params do
      optional :name, type: String, allow_blank: false, documentation: {
        description: "name",
        example: "user1"
      }
      at_least_one_of :name
    end

    get :user do
      user = ::User.find_by(name: params["name"]) || "Can't find #{params["name"]}"
      present :user, user
    end
  end
end