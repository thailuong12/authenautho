class FixVideosColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :videos, :url_link, :image_url
  end
end
