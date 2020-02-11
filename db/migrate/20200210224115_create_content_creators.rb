class CreateContentCreators < ActiveRecord::Migration[6.0]
  def change
    create_table :content_creators do |t|
      t.string :profile_name
      t.string :bio
      t.string :username
      t.string :password_digest

      t.timestamps
    end
  end
end
