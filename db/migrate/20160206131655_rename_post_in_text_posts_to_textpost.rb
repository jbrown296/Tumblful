class RenamePostInTextPostsToTextpost < ActiveRecord::Migration
  def change
    rename_column :text_posts, :post, :textpost
  end
end
