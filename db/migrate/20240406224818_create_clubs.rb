class CreateClubs < ActiveRecord::Migration[7.2]
  def change
    create_table :clubs do |t|
      t.string :title
      t.references :admin, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end
