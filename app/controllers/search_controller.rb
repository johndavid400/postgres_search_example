class SearchController < ApplicationController

  def post
  end

  def search
    @posts = Post.partial_search(params["search"])
  end

end
