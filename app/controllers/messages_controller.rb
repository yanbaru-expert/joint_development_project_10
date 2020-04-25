class MessagesController < ApplicationController
    def index
        @message = Message.all
      end

    def new
        @message = Message.new
    end

    def edit
        @message= Message.find(params[:id])
      end

    def show
        @message= Message.find(params[:id])
      end

    def update
        message = Message.find(params[:id])
        message.update(message_params)

    def create
        Message.create(messge_params)
      end

      def destroy
        message = Message.find(params[:id])
        message.destroy
      end

      private
      def message_params
        params.require(:message).permit(:name, :age)
      end

    end

end
