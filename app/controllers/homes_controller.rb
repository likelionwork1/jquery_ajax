class HomesController < ApplicationController
  # before_action :authenticate_user!

  def index
    @posts = Post.all
    @users = User.all
    @comment = Comment.new
    
  end
end
