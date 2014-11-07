class AddFeedItems < ActiveRecord::Migration
  def change
  	add_column :feeds, :url, :string
  	add_column :feeds, :name, :string
  end
end
