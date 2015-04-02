do ->
  ready = (callback) ->
    if document.readyState != 'loading'
      callback()
    else
      document.addEventListener 'DOMContentLoaded', callback


  addClass = (el, className) ->
    if el.classList
      el.classList.add className
    else
      el.className += ' ' + className


  removeClass = (el, className) ->
    if el.classList
      el.classList.remove(className)
    else
      el.className = el.className
        .replace(
          new RegExp('(^|\\b)' + className.split(' ').join('|') + '(\\b|$)', 'gi')
          , ' '
        )


  html = document.querySelector('html')
  removeClass html, 'no-js'
  addClass html, 'js'


  fullscreen = (element) ->
    if element.requestFullscreen
      element.requestFullscreen()
    else if element.msRequestFullscree
      element.msRequestFullscreen()
    else if element.mozRequestFullScreen
      element.mozRequestFullScreen()
    else if element.webkitRequestFullscreen
      element.webkitRequestFullscreen()

  ready ->
    # Play the video on click.
    document.querySelector('[data-play]')?.addEventListener 'click', (e) ->
      e.preventDefault()
      e.target.setAttribute 'data-playing', ''
      videoElement = document.getElementsByTagName("video")[0]

      videoElement.play()
      fullscreen videoElement

    # document.querySelector('[data-menu]')?.addEventListener 'click', (e) ->
    #   e.preventDefault()
