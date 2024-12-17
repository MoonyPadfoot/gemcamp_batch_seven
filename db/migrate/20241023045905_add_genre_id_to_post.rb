class AddGenreIdToPost < ActiveRecord::Migration[7.0]
  def change
    add_reference :posts, :genre
  end
end
