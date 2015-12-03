exports.config =
  files:
    javascripts:
      joinTo:
        'js/app.js': /(^app|^bower_components\/foundation-sites\/dist\/foundation.js)/
    stylesheets:
      joinTo: 'css/app.css'
  plugins:
    sass:
      options:
        includePaths: [
          'bower_components/foundation-sites/scss'
        ]
    postcss:
      processors: [
        require('autoprefixer')({browsers: ['last 2 versions', 'ie >= 9', 'and_chr >= 2.3']})
      ]
    babel:
      ignore: [
        /^(bower_components|vendor)/
      ]
