class SessionsController < ApplicationController
    def new
        @user = User.new
        render :new
    end

    def create
        username = params[:user][:username]
        password = params[:user][:password]

        @user = self.find_by_credentials(username, password)

        if @user
            login!(@user)
            redirect_to user_url(@user)
        else
            flash[:errors] = @user.errors.full_messages
            render :new
        end
    end


end
