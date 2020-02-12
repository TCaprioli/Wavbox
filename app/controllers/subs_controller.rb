class SubsController < ApplicationController
   def new
    @sub = Sub.new
   end

   def create
    @sub = Sub.create(subs_params)
   end

   def destroy
    @sub = Sub.find(params[:id])
    @sub.destroy
    redirect_to root
   end

   private
   def subs_params
    params.require(:sub).permit(:subscribed_id, :subscriber_id)
end
end
