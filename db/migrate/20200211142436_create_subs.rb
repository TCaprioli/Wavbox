class CreateSubs < ActiveRecord::Migration[6.0]
  def change
    create_table :subs do |t|
      t.integer :subscribed_id
      t.integer :subscriber_id

      t.timestamps
    end
  end
end
