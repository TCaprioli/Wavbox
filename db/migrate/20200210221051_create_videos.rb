class CreateVideos < ActiveRecord::Migration[6.0]
  def change
    create_table :videos do |t|
      t.string :title
      t.string :description
      t.string :hashtag
      t.integer :user_id

      t.timestamps
    end
  end
end
