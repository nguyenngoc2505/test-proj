module Admin::Controllers::Posts
  class Destroy
    include Admin::Action

    def call(params)
      @post = PostRepository.find params[:id]
      PostRepository.delete @post
      redirect_to "/admin/posts"
    end
  end
end
