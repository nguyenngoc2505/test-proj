module Admin::Controllers::Posts
  class Index
    include Admin::Action
    expose :posts

    def call(params)
      @posts = PostRepository.all
    end
  end
end
