module.exports = config:
  conventions:
    assets: [
      /^client\/assets/,
    ]
  paths:
    public: '_publish'
    watched: ['client']
  files:
    javascripts:
      joinTo:
        'scripts/bowerfiles.js': /^bower_components/
        'scripts/app.js': [/^client/, /echidna\/shared/]
        'scripts/airbrake.js': /vendor\/airbrake/
        'scripts/modernizr.js': /vendor\/modernizr/
      order:
        before: [
          # jquery needs to come before everything else to make sure that Angular will use jQuery instead of jqLite
          'bower_components/jquery/dist/jquery.js',
          # and angular needs to come before everything but jquery to make sure it's defined when misc directives load
          'bower_components/angular/angular.js',
          # moment-timezone needs to come after moment
          'bower_components/moment/moment.js',
          'bower_components/moment-timezone/builds/moment-timezone-with-data-2010-2020.js',
          'bower_components/quill/dist/quill.js',
        ]
    stylesheets:
      joinTo:
        'styles/app.css': [/^client/]
        'styles/bowerfiles.css': /^bower_components/
  modules:
    wrapper: false
    definition: false
  npm:
    enabled: false
  plugins:
    digest:
      referenceFiles: /\.mako$/
