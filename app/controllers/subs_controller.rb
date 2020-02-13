class SubsController < ApplicationController
   def new
    @sub = Sub.new
   end

   def create
    # byebug
    @sub = Sub.create(subs_params)
    redirect_to user_path(@sub.subscribed.id)
   end

   def destroy
    @sub = Sub.find(params[:id])
    @sub.destroy
    redirect_to root
   end

   private

    def subs_params
       params.permit(:subscribed_id, :subscriber_id)
    end
end
