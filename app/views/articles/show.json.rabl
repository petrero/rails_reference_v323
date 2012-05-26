object @article
attributes :id, :name, :published_at

if current_user.admin?
  node(:edit_url) {|article| edit_article_url(article)}
end
