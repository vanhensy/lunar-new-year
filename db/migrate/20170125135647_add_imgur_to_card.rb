class AddImgurToCard < ActiveRecord::Migration[5.0]
  def change
  	add_column :cards, :imgur, :string
    add_index :cards, :imgur, unique: true
  end
end
