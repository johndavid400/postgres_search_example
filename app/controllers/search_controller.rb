class SearchController < ApplicationController

  def post
  end

  def search
    @posts = []
    Post.partial_search(params["search"]).last(50).each do |post|
     @posts.push({"title" => post.title, "body" => post.body})
    end
    render :json => { posts: @posts }
  end

end
