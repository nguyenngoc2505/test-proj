module Admin::Controllers::Users
  class Create
    include Admin::Action

    def call(params)
      @user = User.new params[:user]
      UserRepository.persist @user
      redirect_to "/users"
    end
  end
end
