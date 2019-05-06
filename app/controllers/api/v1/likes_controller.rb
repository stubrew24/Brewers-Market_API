class Api::V1::LikesController < ApplicationController

    def index
        @likes = Like.all
        render json: @likes
    end

    def create
        @like = Like.find_by(user_id: params[:user_id], post_id: params[:post_id])
        @post = Post.find(params[:post_id])
        if @like 
            @like.update(liked: !@like.liked)
            render json: {liked: @like.liked, likes: @post.likes}
        else 
            @like = Like.create(user_id: params[:user_id], post_id: params[:post_id])
            render json: {liked: @like.liked, likes: @post.likes}
        end
    end

end