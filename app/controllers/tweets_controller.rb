 class TweetsController < ApplicationController
    before_action :set_tweet, only: [:show, :edit, :destroy]
    before_action :authenticate_user!, except: [:index, :show]

    def index
        @tweets = Tweet.all.order("created_at DESC")
        @tweet = Tweet.new 
    end


    def new
        @tweet = current_user.tweets.build
        # @tweet = Tweet.new 
    end


    def create
        # @tweet = Tweet.new(tweet_params)
        @tweet = current_user.tweets.build(tweet_params)
        if @tweet.save
            flash[:notice] = "Tweet was successfully created."
            redirect_to root_path
        else
            render 'new'
            
        end
    end


    def show
        # @tweet = Tweet.find(params[:id])
    end

     
    def edit
        # @tweet = Tweet.find(params[:id])
    end


    def destroy
        # @tweet = Tweet.find(params[:id])
    end


    private

    def tweet_params
        params.require(:tweet).permit(:tweet)
    end
    
    def set_tweet 
        @tweet = Tweet.find(params[:id])
    end

end