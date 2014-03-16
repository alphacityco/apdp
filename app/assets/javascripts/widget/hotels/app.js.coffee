#= require jquery
#= require vendor/jquery.als
#= require underscore
#= require backbone

Hotels = {}

$ ->
  $("#hotel-list").als
    circular: "yes"
    visible_items: 4

  Hotels.init()

Hotels.init ->
