class MessagesController < ApplicationController
    def index
        @message = Message.all
      end

    def new
        @message = Message.new
    end

    def create
        Message.create(messge_params)
      end

      private
      def message_params
        params.require(:message).permit(:name, :age)
      end

end
