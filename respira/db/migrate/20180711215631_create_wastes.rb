class CreateWastes < ActiveRecord::Migration[5.0]
  def change
    create_table :wastes do |t|
      t.string :waste_name
      t.string :waste_material
      t.string :waste_description
      t.string :waste_img

      t.timestamps
    end
  end
end
