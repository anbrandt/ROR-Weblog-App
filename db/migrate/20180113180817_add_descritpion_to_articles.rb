class AddDescritpionToArticles < ActiveRecord::Migration[5.1]
  def change

    add_column :articles, :created_at, :timestamp
    add_column :articles, :updated_at, :timestamp

  end
end
