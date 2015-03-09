module Admin::Controllers::Users
  class New
    include Admin::Action
    expose :user

    def call(params)
      @user = User.new
    end
  end
end
