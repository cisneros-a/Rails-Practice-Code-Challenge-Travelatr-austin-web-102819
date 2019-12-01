class PostsController < ApplicationController

    def index
        @posts = Post.all
    end 

    def show
        @post = Post.find(params[:id])
    end 

    def new
        @post = Post.new
        @bloggers = Blogger.all
        @destinations = Destination.all
    end 

    def create
        @post = Post.create(posts_params(:blogger_id, :destination_id, :title, :content))

        redirect_to @post
    end 

    private

    def posts_params(*args)
        params.require(:post).permit(*args)
    end 
end 