class Api::V1::PostImagesController < ApplicationController

    def create
        @postimage = PostImage.create(post_id: params[:post_id], image_url: params[:image_url])
    end

end