class Api::V1::MemoirsController < ApplicationController

    def create
        @memoir = Memoir.create(memoir_params)
        render json: @memoir
    end

    def destroy
        @memoir = Memoir.find(params[:id])
        @memoir.destroy
    end

    private

    def memoir_params
        params.permit(:user_id, :park_id)
    end

end
