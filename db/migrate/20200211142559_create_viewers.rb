class CreateViewers < ActiveRecord::Migration[6.0]
  def change
    create_table :viewers do |t|
      t.string :account_name
      t.string :password_digest

      t.timestamps
    end
  end
end
