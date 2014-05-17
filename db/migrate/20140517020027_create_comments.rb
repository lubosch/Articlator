class CreateComments < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.text :text
      t.references :article

      t.timestamps
    end
    add_index :articles, :article_id
  end
end
