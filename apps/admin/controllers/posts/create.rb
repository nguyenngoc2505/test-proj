module Admin::Controllers::Posts
  class Create
    include Admin::Action

    def call(params)
      @post = Post.new params[:post]
      post = PostRepository.persist @post

      redirect_to "/posts/#{post.id}"
    end
  end
end
