#= require jquery
#= require vendor/jquery.als
#= require underscore
#= require backbone
#= require widget/related_link/main
#= require widget/related_link/links/model
#= require widget/related_link/links/collection

$ ->
  articleId = '50-martinis-en-el-ritz-y-un-bloody-mary-por-encargo' # window.location.pathname.split('/')[1]

  new RelatedLinks.Views.Main {articleId}
