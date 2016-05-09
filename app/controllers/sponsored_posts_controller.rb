class SponsoredPostsController < ApplicationController
  def show
    @sponsoredpost = SponsoredPosts.find(params[:id])
  end

  def new
    @topic = Topic.find(params[:topic_id])
    @sponsoredpost = SponsoredPosts.new
  end

  def edit
    @sponsoredpost = SponsoredPosts.find(params[:id])
  end
end
