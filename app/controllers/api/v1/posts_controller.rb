class Api::V1::PostsController < ApplicationController

    def index
        @Posts = Post.all
        render json: @Posts
    end

    def show
        @Post = Post.find(params[:id])
        render json: @Post
    end

end