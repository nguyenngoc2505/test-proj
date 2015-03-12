module ApiV1::Controllers::Posts
  class Index
    include ApiV1::Action
    expose :posts

    def call(params)
      @posts = PostRepository.all
    end
  end
end
