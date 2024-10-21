class CitySerializer < ActiveModel::Serializer
  attributes :id, :province, :name

  def province
    object.province.name
  end
end
