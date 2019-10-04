class Api::V1::BucketlistsController < ApplicationController

    def create
        @bucketlist = Bucketlist.create(bucketlist_params)
        render json: @bucketlist
    end

    def destroy
        @bucketlist = Bucketlist.find(params[:id])
        @bucketlist.destroy
    end

    private

    def bucketlist_params
        params.permit(:user_id, :park_id)
    end

end
