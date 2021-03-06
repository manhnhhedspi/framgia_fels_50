$(document).on "page:change", ->
  monthNames = [
    "January"
    "February"
    "March"
    "April"
    "May"
    "June"
    "July"
    "August"
    "September"
    "October"
    "November"
    "December"
  ]
  dayNames = [
    "Sunday"
    "Monday"
    "Tuesday"
    "Wednesday"
    "Thursday"
    "Friday"
    "Saturday"
  ]
  newDate = new Date
  newDate.setDate newDate.getDate()
  $("#Date").html dayNames[newDate.getDay()] + " " + newDate.getDate() + " " + monthNames[newDate.getMonth()] + " " + newDate.getFullYear()
  setInterval (->
    seconds = (new Date).getSeconds()
    $("#sec").html (if seconds < 10 then "0" else "") + seconds
    return
  ), 1000
  setInterval (->
    minutes = (new Date).getMinutes()
    $("#min").html (if minutes < 10 then "0" else "") + minutes
    return
  ), 1000
  setInterval (->
    hours = (new Date).getHours()
    $("#hours").html (if hours < 10 then "0" else "") + hours
    return
  ), 1000
  return
