class CreateSubs < ActiveRecord::Migration[6.0]
  def change
    create_table :subs do |t|
      t.integer :content_creator_id
      t.integer :viewer_id

      t.timestamps
    end
  end
end
