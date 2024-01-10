class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.integer :weight
      t.integer :thickness
      t.integer :size

      t.timestamps
    end
  end
end
