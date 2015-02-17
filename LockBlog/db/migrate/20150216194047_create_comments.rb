class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
	  t.text :commented_to
      t.string :commenter
      t.text :body
	  t.text :url
      t.references :article, index: true
 
      t.timestamps null: false
    end
	add_foreign_key :comments, :articles
  end
end
