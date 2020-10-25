class VideosController < ApplicationController
  def index
      @videos = Video.all
  end

  def new
    @video = Video.new
  end

  def create
    video = VideoInfo.new(params[:link])
    Video.create(user: current_user, title: video.title, description: video.description, image_url: video.thumbnail_large, video_url: video.embed_url)
    redirect_to videos_path
  end
end
