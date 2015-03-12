module Admin::Controllers::Posts
  class Update
    include Admin::Action

    def call(params)
      @post = PostRepository.find params[:id]
      @post.update params[:post]
      PostRepository.update(@post)

      redirect_to "/posts/#{@post.id}"
    end
  end
end
