class MessagesController < ApplicationController
    before_action :set_user, except: :index

    def create
        message = @user.messages.build(message_params)
        if message.save
            render json: message 
        else 
            render json: {error: 'Error creating message'}
        end
    end

    def index
        messages = Message.all
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