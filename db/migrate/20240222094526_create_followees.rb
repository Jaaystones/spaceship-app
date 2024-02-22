class CreateFollowees < ActiveRecord::Migration[7.1]
  def change
    create_table :followees do |t|
      t.string :name

      t.timestamps
    end
  end
end
