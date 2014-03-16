# article
json.src_id @article.src_id
json.title_plain @article.title_plain
json.excerpt @article.content

# author
json.author @article.author, :src_id, :name, :nickname, :url

# hotels
json.related_links @article.related_links