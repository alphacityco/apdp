#= require jquery
#= require underscore
#= require backbone
#= require widget/jquery.als

do ->
  $ ->
    $("#my-als-list").als({circular: "yes", visible_items: 3})
