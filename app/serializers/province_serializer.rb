class ProvinceSerializer < ActiveModel::Serializer
  attributes :id, :region, :name

  def region
    object.region.name
  end
end
