class BarangaySerializer < ActiveModel::Serializer
  attributes :id, :city, :name

  def city
    object.city.name
  end
end
