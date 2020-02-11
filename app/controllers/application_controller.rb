class ApplicationController < ActionController::Base
    before_action :authorized
    helper_method :current_user
    helper_method :logged_in?

    def current_cc_user
        ContentCreator.find_by(id: session[:content_creator_id])
    end

    def current_viewer_user
        Viewer.find_by(id: session[:viewer_id])
    end

    def logged_in?   
        !current_cc_user.nil? || !current_viewer_user.nil?
    end

    def authorized
        redirect_to '/welcome' unless logged_in?
    end
end