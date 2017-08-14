class CreateMeets < ActiveRecord::Migration[5.1]
  def change
    create_table :meets do |t|
      t.string :title
      t.text :info

      t.timestamps
    end
  end
end
