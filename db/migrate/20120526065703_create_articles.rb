class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.references :author
      t.string :name
      t.text :content
      t.datetime :published_at

      t.timestamps
    end
    add_index :articles, :author_id
  end
end
