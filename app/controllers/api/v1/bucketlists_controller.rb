class Api::V1::BucketlistsController < ApplicationController

    def create
        @bucketlist = Bucketlist.create(bucketlist_params)
        @park = Park.all.find_by(bucketlist: @bucketlist)
        render json: @park
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
