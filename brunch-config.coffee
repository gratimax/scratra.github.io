exports.config =
  # See http://brunch.io/#documentation for docs.
  files:
    javascripts:
      joinTo:
        'js/app.js': /^app/
        'js/vendor.js': /^vendor|bower_components/
    stylesheets:
      joinTo: 'css/app.css'
    templates:
      joinTo: 'js/app.js'
