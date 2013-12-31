module.exports = (grunt) ->

  brunch = require 'brunch'

  for plugin in require('matchdep').filter('grunt-*')
    grunt.loadNpmTasks plugin

  grunt.initConfig

    'gh-pages':
      options:
        base: 'public'
        branch: 'master'
        message: 'Deployed to master automatically'
      src: ['**']

    clean:
      deploy: ['public/', '.grunt/']

  grunt.registerTask 'brunch:production', 'brunch build --production', ->
    done = @async()

    brunch.build production: true, ->
      done()

  grunt.registerTask 'deploy', ['brunch:production', 'gh-pages', 'clean:deploy']