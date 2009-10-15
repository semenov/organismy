class VotesController < ApplicationController
  def create
    if params[:type] == 'post'
      @voteable = Post.find(params[:id])
    elsif params[:type] == 'comment'
      @voteable = Comment.find(params[:id])
    else
    end
    if @voteable.user_id != current_user.id
      @voteable.vote true, current_user         
      flash[:success] = 'Ваш голос учтен.'
    else
      flash[:error] = 'Нельзя голосовать за своё.'
    end
    
    respond_to do |format|
      format.html do 
        if request.xhr?
          flash.clear
          render :partial => 'shared/vote_widget', :locals => { :voteable => @voteable }
        else
          redirect_to(:back)
        end
      end
      format.xml  { head :ok }
    end    
  end    
end
