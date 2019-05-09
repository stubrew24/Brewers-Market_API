class Api::V1::PostsController < ApplicationController

    def index
        @Posts = Post.all.reverse
        render json: @Posts
    end

    def show
        @Post = Post.find(params[:id])
        render json: @Post
    end

    def create
        @post = Post.new(title: params[:title], content: params[:content], brewery_id: params[:brewery_id])
        if @post.save
            params[:images].each do |image| 
                PostImage.create(post_id: @post.id, image_url: image)
            end
            render json: @post
        else
            render json: @post.errors.full_messages
        end
    end

end