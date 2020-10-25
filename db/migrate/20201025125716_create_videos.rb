class CreateVideos < ActiveRecord::Migration[6.0]
  def change
    create_table :videos do |t|
      t.string :title
      t.string :url_link
      t.string :description

      t.timestamps
    end
  end
end
