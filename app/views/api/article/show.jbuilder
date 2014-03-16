# article
json.src_id @article.src_id
json.slug @article.slug
json.title_plain @article.title_plain
json.excerpt @article.content

# author
json.author @article.author, :src_id, :name, :nickname, :url

# related links
json.related_links @article.related_links