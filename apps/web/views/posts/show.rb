module Web::Views::Posts
  class Show
    include Web::View

    def author
      if user = UserRepository.find(post.user_id)
        user.name
      else
        "Unknown"
      end
    end
  end
end
