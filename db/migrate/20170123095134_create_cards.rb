class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.string :sender
      t.string :receiver
      t.integer :template_id
      t.text :message
      t.string :image_url

      t.timestamps
    end
  end
end
