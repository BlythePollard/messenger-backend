class Api::V1::UsersController < ApplicationController
    
    def create
        user = User.find_by(username: params[:username])
        if user
            session[:user_id] = user.id
            render json: user
        else 
            render json: {message: "User could not be found or created"}
        end
    end

    def show
        user = User.find_by(id: params[:id])
        if user
            render json: user #, include: [:messages]
        else 
            render json: {message: "User was not found"}
        end
    end

    private

    def user_params
        params.require(:user).permit(:username)
    end

end