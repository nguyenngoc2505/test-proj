module Admin::Controllers::Users
  class Index
    include Admin::Action
    expose :users

    def call(params)
      @users = UserRepository.all 
    end
  end
end
