class CommentsController < ApplicationController
    def create
        @data = params
        
        @comment = Comment.new
        @comment.user = current_user.email
        @comment.memo = params[:comment][:memo]
        @comment.post_id = params[:post_id]
        @comment.save
        
        # redirect_to request.referrer
        
        respond_to do |format|
            format.js
        end
    end
    
    def destroy
        @target = Comment.find(params[:id])
        @target.destroy
        
        # redirect_to request.referrer
        
        respond_to do |format|
            format.js
        end
        
    end
end
