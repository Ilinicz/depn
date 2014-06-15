

#jQuery to collapse the navbar on scroll
$(window).scroll ->
  if $(".navbar").offset().top > 120
    $(".navbar-static").addClass "top-nav-collapse"
  else
    $(".navbar-static").removeClass "top-nav-collapse"
  return


#jQuery for page scrolling feature - requires jQuery Easing plugin
$ ->
  $(".page-scroll a").bind "click", (event) ->
    $anchor = $(this)
    $("html, body").stop().animate
      scrollTop: $($anchor.attr("href")).offset().top
    , 1500, "easeInOutExpo"
    event.preventDefault()
    return

  return

#Bootstrap navbar affix
$ ->
  $("#nav").affix offset:
    top: $("header").height()


#Parallax
(->
  $(document).ready ->
    $window = undefined
    $window = $(window)
    $("section[data-type=\"background\"]").each ->
      $scroll = undefined
      $scroll = $(this)
      $(window).scroll ->
        coords = undefined
        yPos = undefined
        yPos = -($window.scrollTop() / $scroll.data("speed"))
        coords = "50% " + yPos + "px"
        $scroll.css backgroundPosition: coords

  return
).call this


#Change opacity
$ ->
  $(".fadein").addClass "load"