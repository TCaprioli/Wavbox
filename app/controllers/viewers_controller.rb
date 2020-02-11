class ViewersController < ApplicationController
    before_action :set_viewer_specific, only: [:edit, :update]

    def edit
    end

    def new
        @viewer = Viewer.new
    end

    def update
        @viewer.update
        redirect_to root
    end

    def create
        @viewer = Viewer.create(viewer_params)
        redirect_to root
    end

private

    def set_viewer_specific
        @viewer = Viewer.find(params[:id])
    end

    def viewer_params
        params.require(:viewer).permit(:account_name, :password_digest)
    end
end
