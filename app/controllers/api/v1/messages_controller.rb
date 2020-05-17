class Api::V1::MessagesController < ApplicationController
    before_action :set_user, except: :all_messages_index

    def create
        message = @user.messages.build(message_params)
        if message.save
            render json: message 
        else 
            render json: {error: 'Error creating message'}
        end
    end

    def all_messages_index
        messages = Message.all
        render json: messages
    end

    def index
        messages = @user.messages
        render json: messages
    end

    private 

    def message_params
        params.require(:message).permit(:content, :user_id)
    end

    def set_user
        @user = User.find(params[:user_id])
    end

end