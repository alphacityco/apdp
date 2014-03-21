#= require jquery
#= require jquery_ujs
#= require vendor/jquery.als
#= require underscore
#= require backbone
#= require handlebars.runtime
#= require widget/related_link/links/link_jst
#= require widget/related_link/start
#= require widget/related_link/links/link_view
#= require widget/related_link/links/link
#= require widget/related_link/links/links
#= require_self

$ ->
  articleId = APDPWidget?.articleId or window.location.pathname.split('/')[1]

  new RelatedLinks.Views.Start { articleId }
