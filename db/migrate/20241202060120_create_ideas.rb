class CreateIdeas < ActiveRecord::Migration[7.1]
  def change
    create_table :投稿 do |t|
      t.string :名前
      t.text :説明
      t.string :写真

      t.timestamps
    end
  end
end
