json.(@article, :id, :name, :published_at)
json.edit_url edit_article_url(@article) if current_user.admin?
