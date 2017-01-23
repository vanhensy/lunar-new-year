class AddSlugToCard < ActiveRecord::Migration[5.0]
  def change
    add_column :cards, :slug, :string
    add_index :cards, :slug, unique: true
  end
end
