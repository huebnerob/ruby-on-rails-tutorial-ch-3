class MicropostsController < ApplicationController
  before_action :signed_in_user, only: [:create, :destroy]
  before_action :correct_user_or_admin,   only: :destroy

  def create
  	@micropost = current_user.microposts.build(micropost_params)
  	if @micropost.save
  		flash[:success] = "Micropost created!"
  		redirect_to root_url
  	else
  		@feed_items = []
  		render 'static_pages/home'
  	end
  end

  def destroy
  	@micropost.destroy
    flash[:success] = "Micropost deleted."
    redirect_to :back
  end

  private 

  	def micropost_params
  		params.require(:micropost).permit(:content)
  	end

  	def correct_user_or_admin
      if current_admin?
        @micropost = Micropost.find_by(id: params[:id])
        return
      end
      @micropost = current_user.microposts.find_by(id: params[:id])
      redirect_to root_url if @micropost.nil?
    end
end