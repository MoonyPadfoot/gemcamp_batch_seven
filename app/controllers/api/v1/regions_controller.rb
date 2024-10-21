class Api::V1::RegionsController < ApplicationController

  def index
    regions = Address::Region.all
    render json: regions, each_serializer: RegionSerializer
  end

  def show
    region = Address::Region.find(params[:id])
    render json: region, serializer: RegionSerializer
  end
end