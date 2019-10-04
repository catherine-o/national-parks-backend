class Api::V1::MemoirsController < ApplicationController

    def create
        @memoir = Memoir.create(memoir_params)
        @park = Park.all.find_by(memoir: @memoir)
        render json: @park
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
